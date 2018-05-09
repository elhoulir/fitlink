class GymSessionsController < ApplicationController

    def new
        @gym_session = GymSession.new
        @gym = Gym.find(params[:gym_id])
    end

    def create
        
    end

end 