module Api::V1
	class EmployeesController < ApplicationController
		def index
			@employees = Employee.all
			render json: @employees.as_json(only: [:first_name, :last_name, :email])
		end

		def create
			
		end

		def show
			
		end

	private

		def employee_params
			params.permit(:first_name, :last_name, :current_pto)
		end
	end
end
