class ProfilesController < ApplicationController
    def new
        # form where a user can fill out their OWN profile
        # only the currently logged it should be able to do this
        @user = User.find( params[:user_id] )
        @profile = @user.build_profile
    end
end