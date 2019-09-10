class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :surname
      t.date :birth_date
      t.integer :id_number

      t.timestamps
    end
  end
end
