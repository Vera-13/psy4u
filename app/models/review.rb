class Review < ApplicationRecord
  belongs_to :patient, class_name: "User", foreign_key: "patient_id"
  belongs_to :doctor, class_name: "User", foreign_key: "doctor_id"
  validates :comment, :rating, presence: true
end
