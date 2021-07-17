class TripsController < ActionController::Base
    # before_action :authenticate_user!
    skip_before_action :verify_authenticity_token

    # def index
    #     @user = current_user
    #     # @trips = current_user.trips
    #     @trips = Trip.all
    #     # @payments = current_user.payments.last
    #     render json: @trips
    # end
   
    def create
        trip = Trip.new(trip_params)
        #First see from which zone user will travel
        if trip.zone_id == 1
          if trip.user.payments.last.amount > Fare.first.fare
           amount_left = trip.user.payments.last.amount - 2.50
           total_amount = trip.user.payments.last.update(amount: amount_left)
          end
        elsif trip.zone_id == 2 || trip.zone_id == 3 && trip.zone_id != 1
           if trip.user.payments.last.amount > 2
            amount_left = trip.user.payments.last.amount - 2
            total_amount = trip.user.payments.last.update(amount: amount_left)
           end
           #assuming user will tapout 
        elsif trip.zone_id == 
          render json: {"message": "Some error happened"}
        end

        #if the current_user travels to all three zones
        if @trip.save!
            render json: {"message": "You are ready to travel"} 
          else
            render json: {"error": "Your card has been rejected"}
        end
    end
    
    def update
       trip = current_user.trip.find(params[:id])
        if trip.tapout && trip.update!(person_params)
          balance_amount = trip.user.payments.last.amount + 0.5
          trip.user.payments.last.update(amount: balance_amount)
          render json: {"message": "Your journy completed"} 
        else
          render json: {"message": "Your journy completed"} 
        end
    end

    private
    def trip_params
      params.permit(:from, :to, :tapin, :tapout, :fare, :user_id)
    end

end