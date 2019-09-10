class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :office, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.string :doctor_name
      t.string :doctor_surname
      t.references :patient, null: false, foreign_key: true
      t.string :patient_name
      t.string :patient_surname
      t.date :appointment_date
      t.timestamp :start_Time
      t.timestamp :end_Time
      t.string :appointment_Purpose

      t.timestamps
    end
  end
end
