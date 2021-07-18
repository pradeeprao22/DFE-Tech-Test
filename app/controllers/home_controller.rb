class HomeController < ActionController::Base
    before_action :authenticate_user!

    def index
     @user = current_user
     @trips = current_user.trips
     @payments = current_user.payments.last
    end

    def create
        @payment = Payment.new(trip_params)
        if @payment.save!
            render json: {"message": "You are ready to travel"} 
          else
            render json: {"error": "Your card has been rejected"}
        end
    end

    private
    def payment_params
      params.permit(:amount, :user_id)
    end
end