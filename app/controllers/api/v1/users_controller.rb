class Api::V1::UsersController < ApplicationController
    # before_action :set_user, only: [:show]

    def index
        users = User.all
        render json: UserSerializer.new(users)
    end


    def create
        @user = User.new(user_params)
        
        if @user.save
            session[:user_id] = @user.id
            render json: { user: @user, status: :created }
        else 
            render json: {error: 'Something went wrong. Please try again.'}
        end
    end

    def show
        user = User.find_by_id(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :address, :password)
    end

    def set_user
        @user = User.find_by_id(params[:id])
    end

end
