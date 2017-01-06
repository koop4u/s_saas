class UsersController < ApplicationController
        before_action :authenticate_user!
    
    def index #pentru a arata toate persoanele.
        @users = User.includes(:profile)
        
    end
    
    def show
        @user = User.find( params[:id] )
    end
    
end
