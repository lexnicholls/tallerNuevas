class Appointment < ApplicationRecord
  belongs_to :office
  belongs_to :doctor
  belongs_to :patient

validates :office, uniqueness: {scope: :start_Time, message: "is ocuppied, try in other hour, please." }
validates :office, uniqueness: {scope: :end_Time, message: "is ocuppied, try in other hour, please." }

validates :doctor, uniqueness: {scope: :start_Time, message: "is ocuppied now, try later, please." }
validates :doctor, uniqueness: {scope: :end_Time, message: "is ocuppied now, try later, please." }

validates :patient, uniqueness: {scope: :start_Time, message: "is already have an appointment righ now."}  

validates :patient, uniqueness: {scope: :end_Time, message: "is already have an appointment righ now."}	
end
