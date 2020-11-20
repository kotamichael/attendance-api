module Api::V1
	class UsersController < ApplicationController
		def index
			@users = User.all
			render json: @users.as_json(only: [:id, :first_name, :last_name, :email])
		end

		def create
			
		end

		def show
			
		end

	private
		
		def users_params
			params.require(:email).permit(:first_name, :last_name, :password)
		end
	end
end
