class EmployeeUin < ApplicationRecord
  belongs_to :employee
  validates_presence_of :uin, :employee_id
end
