class GymSessionsController < ApplicationController

    before_action :set_gym, only: [:new, :create, :book]

    def new
        @gym_session = GymSession.new
    end

    def create
       
        @new_gym_session = GymSession.new(gym_session_params)
        @new_gym_session.gym = @gym
        puts @new_gym_session
        if @new_gym_session.save
         redirect_to gym_path(@gym)
        else
          redirect_to root_path
        end
    end

    def book 
        # @session = GymSession.find(params[:id])
        @booking = BookedGymSession.new
        @booking.gym = @gym 
        @booking.user = current_user
        @booking.save!
    end


    private

    def gym_session_params
      params.require(:gym_session).permit(:day_of_week, :time_from, :time_until, :hourly_price, :weeks_in_advance)
    end

    def set_gym
        @gym = Gym.find(params[:gym_id])
    end

end 