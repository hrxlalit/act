class Api::V1::UsersController < ApplicationController

	def index
		@users =  User.all
		render json:{
			response_code: 200,
			response_message: "Success OK",
			users: @users
		}		
	end
end
