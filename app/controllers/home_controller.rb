class HomeController < ActionController::Base
    before_action :authenticate_user!

    def index
     @user = current_user
     @trip = current_user.trips
     @payments = current_user.payments.last
    end

end