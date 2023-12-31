class User < ApplicationRecord
  has_one_attached :photo
  has_many :doctor_bookings, class_name: 'Booking', foreign_key: 'doctor_id', dependent: :destroy
  has_many :patient_bookings, -> { order(date: :asc) }, class_name: 'Booking', foreign_key: 'patient_id', dependent: :destroy
  has_many :doctor_reviews, class_name: 'Review', foreign_key: 'doctor_id', dependent: :destroy
  has_many :specializations, class_name: 'Specialization', foreign_key: 'doctor_id', dependent: :destroy
  has_many :symptoms, through: :specializations
  has_many :doc_langs, class_name: 'DocLang', foreign_key: 'doctor_id', dependent: :destroy
  has_many :languages, through: :doc_langs
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def booked_hours
    doctor_bookings.where("date > ?", DateTime.now).pluck(:date)
  end
end
