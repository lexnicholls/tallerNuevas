class CreateOfficeTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :office_types do |t|
      t.integer :officeType_id
      t.string :officeType_name

      t.timestamps
    end
  end
end
