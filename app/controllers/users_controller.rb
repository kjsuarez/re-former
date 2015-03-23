class UsersController < ApplicationController
	def index
		@user = User.all
	end

	def new

	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to root_path
		else
			render :new
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :email)
	end
end
