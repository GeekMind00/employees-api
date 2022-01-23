class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name, limit: 20
      t.integer :age
      t.string :address, limit: 25
      t.integer :salary

      t.timestamps
    end
  end
end
