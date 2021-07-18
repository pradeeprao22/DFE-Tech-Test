class PaymentsController < ActionController::Base
    def index
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