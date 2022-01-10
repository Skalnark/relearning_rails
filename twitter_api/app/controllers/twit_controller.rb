class TwitController < ApplicationController
    require "ostruct"
    def create
        @twit = Twit.create!(
            content: params[:content],
            response_to: params[:response_to],
            user_id: params[:user_id]
        )
        render json: @twit
    end

    def timeline
        following = Follower.where(follower_id: params[:user_id])

        twits = Array.new
        twits << Twit.where(user_id: params[:user_id]).where("response_to IS NULL")

        following.each do |follower|
            twits << Twit.where(user_id: follower.user_id).where("response_to IS NULL")
        end
        twits.flatten!
        render json: twits.sort_by { |twit| twit.created_at }.reverse
    end

    def show
        @twit = Twit.find(params[:id])

        render json: OpenStruct.new(:user => User.find(@twit.user_id).username, :twit => @twit, :responses => get_responses(Twit.where(response_to: @twit.id)))
    end

    def index
        @twits = Twit.all
        render json: @twits
    end

    def update
        @twit = Twit.find(params[:id])
        @twit.update!(
            content: params[:content],
            response_to: params[:response_to],
            user_id: params[:user_id]
        )
        render json: @twit
    end

    def destroy
        @twit = Twit.find(params[:id])
        @twit.destroy
        render json: @twit
    end

    private 

    def get_responses(twits)
        if !twits.nil?

            resp = Array.new

            puts "going for #{twits.length} twits"
            twits.each do |twit|
                resp << OpenStruct.new(:user => User.find(twit.user_id).username, :twit => twit, :responses => get_responses(Twit.where(response_to: twit.id)))
                puts resp
            end
        end

        puts "Responses: #{resp}"
        return resp
    end

end
