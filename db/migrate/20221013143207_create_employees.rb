class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :nationality
      t.string :role
      t.date :birth_date
      t.references :department, null: true, foreign_key: true

      t.timestamps
    end
  end
end
