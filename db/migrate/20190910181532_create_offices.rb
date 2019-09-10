class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.string :code
      t.string :name
      t.string :location
      t.references :office_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
