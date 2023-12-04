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
end
