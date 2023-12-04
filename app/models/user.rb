class User < ApplicationRecord
  has_one_attached :photo
  has_many :doctor_bookings, class_name: 'Booking', foreign_key: 'doctor_id', dependent: :destroy
  has_many :patient_bookings, class_name: 'Booking', foreign_key: 'patient_id', dependent: :destroy
  has_many :doctor_reviews, class_name: 'Review', foreign_key: 'doctor_id', dependent: :destroy
  has_many :specializations, class_name: 'Specialization', foreign_key: 'doctor_id', dependent: :destroy
  has_many :symptoms, through: :specializations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :postal_code, length: { is: 4 }, numericality: { only_integer: true }, presence: true

  geocoded_by :postal_code
  after_validation :geocode, if: :will_save_change_to_postal_code?
end
