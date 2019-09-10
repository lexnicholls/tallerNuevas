json.extract! patient, :id, :name, :surname, :birth_date, :id_number, :created_at, :updated_at
json.url patient_url(patient, format: :json)
