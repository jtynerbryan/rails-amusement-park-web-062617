class UsersController < ApplicationController
before_filter :authenticate, only: :show

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		session[:user_id] = @user.id
		redirect_to user_path(@user) 
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update

	end

	private

	def user_params
		params.require(:user).permit(:name, :admin, :height, :nausea, :tickets, :happiness, :password)
	end


end