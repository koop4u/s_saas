class ProfilesController < ApplicationController
    def new
        #form where a user cna fill their own profile
        @user = User.find ( params[:user_id] )
        @profile = @user.build_profile
    end
    
    def create
        @user = User.find( params[:user_id] )
        @profile = @user.build_profile(profile_params)#Trebuie de definit fiecare parametru pentru securitate prin private mai jos!
        #salvam forma in baza de date in felul dat:
        if @profile.save
            flash[:success] = "Profile Updated! " #mesaj cu profil Updated
            redirect_to user_path( params[:user_id] ) #redirectioneaza la pagina cu profil completat
            
        else
            render action: :new
        end
        
        #partea cu declararea!
        private
        def profile_params
            params.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :contact_email, :description)
        end
    end
end