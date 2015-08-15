class ProfilesController < ApplicationController
    
    def new
        # form where a user can fill out their OWN profile
        # only the currently logged it should be able to do this
        @user = User.find( params[:user_id] )
        @profile = @user.build_profile
    end
    
    def create
        @user = User.find( params[:user_id] )
        @profile = @user.build_profile
        
        if @profile.save
          flash[:success] = "Profile Updated!"
          redirect_to user_path( params[:user_id] )
        else
          flash[:error] = "Error saving new profile"
          render action: :new
        end
    end
    
private
    
    def profile_params
        params.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :contact_email, :description)
    end
    
end