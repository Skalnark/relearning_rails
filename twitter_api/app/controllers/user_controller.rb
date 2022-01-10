class UserController < ApplicationController
    def create
        @user = User.create!(
            username: params[:username],
            name: params[:name]
        )
        render json: @user
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def update
        @user = User.find(params[:id])
        @user.update!(
            username: params[:username],
            name: params[:name]
        )
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: @user
    end
end
