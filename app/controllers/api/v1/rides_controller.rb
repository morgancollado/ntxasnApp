module Api
    module V1
        class RidesController < ApplicationController
            def index
                if user_signed_in?
                    render json: current_user.passenger_rides
                else 
                    render json: {}, status: 401
                end 
            end 
        end
    end
end 
