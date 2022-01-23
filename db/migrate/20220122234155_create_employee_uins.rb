class CreateEmployeeUins < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_uins do |t|
      t.integer :uin
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
