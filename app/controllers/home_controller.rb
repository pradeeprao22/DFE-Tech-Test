class HomeController < ActionController::Base
    before_action :authenticate_user!

    def index
     @user = current_user
     @trips = current_user.trips
     @payments = current_user.payments.last
    end

end