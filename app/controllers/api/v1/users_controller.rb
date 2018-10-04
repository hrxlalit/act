class Api::V1::UsersController < ApplicationController
	skip_before_action :verify_authenticity_token
	def index
		@user =  User.all
		render json:{
			response_code: 200,
			response_message: "Success OK",
			users: @user
		}		
	end

	def create
		binding.pry
		@user = User.new(user_params)
	      if @user.save
		render json:{
			response_code: 201,
			response_message: "Success, user created",
			users: @user
		}
		else
		render json:{
			response_code: 500,
			response_message: "Fail, user not created",
			users: @user.error.messages
		}	
		end

	end

	private 
	def user_params
		params.require(:user).permit(:name, :email)		
	end
end
