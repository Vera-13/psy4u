class Booking < ApplicationRecord
  belongs_to :patient, class_name: "User", foreign_key: "patient_id"
  belongs_to :doctor, class_name: "User", foreign_key: "doctor_id"
  validates :date, presence: true
end
