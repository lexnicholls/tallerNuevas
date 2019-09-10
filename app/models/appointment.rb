class Appointment < ApplicationRecord
  belongs_to :office
  belongs_to :doctor
  belongs_to :patient
end
