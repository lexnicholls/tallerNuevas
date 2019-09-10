class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :surname
      t.integer :id_number
      t.integer :cellphone_number
      t.references :specialty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
