class TripController < ActionController::Base


    def index
       @trip = Trip.all
    end

    def create
    end
    
    def update
    end

    private
    
end