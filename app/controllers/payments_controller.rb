class PaymentsController < ActionController::Base
    def create
        @payment = Payment.new(trip_params)
        if @payment.save!
            render json: {"message": "You are ready to travel"} 
          else
            render json: {"error": "Your card has been rejected"}
        end
        private
        def payment_params
          params.permit(:amount, :user_id)
        end
    end
end