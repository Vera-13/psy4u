class DocLang < ApplicationRecord
  belongs_to :language
  belongs_to :doctor, class_name: "User", foreign_key: "doctor_id"
end
