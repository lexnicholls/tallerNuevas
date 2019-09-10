class CreateSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :specialties do |t|
      t.integer :specialty_id
      t.string :profession

      t.timestamps
    end
  end
end
