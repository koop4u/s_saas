class UsersController < ApplicationController
        before_action :authenticate_user!
    
    def index #pentru a arata toate persoanele.
        
    end
    
    def show
        @user = User.find( params[:id] )
    end
    
end
