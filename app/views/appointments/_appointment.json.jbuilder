json.extract! appointment, :id, :office_id, :doctor_id, :doctor_name, :doctor_surname, :patient_id, :patient_name, :patient_surname, :appointment_date, :start_Time, :end_Time, :appointment_Purpose, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
