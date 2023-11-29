class User < ApplicationRecord
  has_many :doctor_bookings, class_name: 'Booking', foreign_key: 'doctor_id'
  has_many :patient_bookings, class_name: 'Booking', foreign_key: 'patient_id'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
