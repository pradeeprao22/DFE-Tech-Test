class TripController < ActionController::Base

    before_action :authenticate_user!

    def create
        Trip.create(trips_params)
    end
    
    def update
        trip = current_user.trip.find(params[:id])
        trip.update!(person_params)
        # redirect_to trip
    end

    def new
    end

    private

    def trip_params
      params.require(:trip).permit(:from, :to, :tapin, :tapout, :fare, :user_id)
    end

end