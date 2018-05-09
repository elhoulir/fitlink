class ProfileController < ApplicationController
  before_action :set_profile

  def show
  end

  def edit
    
  end


  def update
    if @profile.update(profile_params)
      flash[:notice] = "profile updated"
      redirect_to @profile
    else
      flash[:alert] = "profile not updated"
      redirect_to @profile
    end 
  end

  private
  def set_profile
    @profile = current_user.profile
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :date_of_birth, :contact_number, :address, :drivers_license, :drivers_license_image_data, :photo_data)
    
  end
end