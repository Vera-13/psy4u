class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :patient, class_name: "User", foreign_key: "patient_id"
  belongs_to :doctor, class_name: "User", foreign_key: "doctor_id"
end
