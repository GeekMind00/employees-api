class Employee < ApplicationRecord
  has_one :employee_uin
  validates_presence_of :name, :address, :age, :salary
end
