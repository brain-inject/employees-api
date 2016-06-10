class Api::V1::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def create
    @employee = Employee.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      ssn: params[:ssn],
      email: params[:email]
      )

    render :show
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    @employee.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      ssn: params[:ssn],
      email: params[:email]
      )

    render :show
  end

  def destroy
    @employee = Employee.find(params[:id])  
    @employee.destroy

    render json: {"message" => "Employee was Deleted"}, status: 200
  end
end




