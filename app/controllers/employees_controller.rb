class EmployeesController < ApplicationController
  def index
    @employees = Employee.select(:id, :uin, :name).left_outer_joins(:employee_uin)
    render json: @employees, status: 200
  end

  def create
    @employee = Employee.create!(employee_params)
    if employee_uin_params.key?(:uin)
      @employee_uin = EmployeeUin.create!(employee_id: @employee.id,
                                          uin: employee_uin_params[:uin])
    end

    render json: decorate, status: 201
  end

  private

  def employee_params
    # whitelist params
    params.permit(:name, :address, :salary, :age)
  end

  def employee_uin_params
    # whitelist params
    params.permit(:uin)
  end

  def decorate
    uin = (@employee_uin.uin if employee_uin_params.key?(:uin))
    {
      id: @employee.id,
      name: @employee.name,
      address: @employee.address,
      age: @employee.age,
      salary: @employee.salary,
      uin: uin
    }
  end
end
