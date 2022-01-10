class FollowerController < ApplicationController
    def follow

        if params[:user_id] == params[:follower_id]
            render json: { error: "You cannot follow yourself" }, status: 500
            return
        end
        
        if Follower.where(user_id: params[:user_id], follower_id: params[:follower_id]).length > 0
            render json: { error: "You are already following this user" }, status: 500
            return
        end
        
        @follower = Follower.create!(
            user_id: params[:user_id],
            follower_id: params[:follower_id]
            )
        
        render json: @follower
    end

    def unfollow
        @follower = Follower.where(user_id: params[:user_id], follower_id: params[:follower_id])
        @follower.destroy_all
        render json: @follower
    end

    def followers
        @followers = Follower.where(user_id: params[:user_id])
        render json: @followers
    end

    def following
        @following = Follower.where(follower_id: params[:user_id])
        render json: @following
    end
end
