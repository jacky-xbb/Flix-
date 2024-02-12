class ApplicationController < ActionController::Base
  include Clearance::Controller

  private

  # Override the method from Clearance
  def user_params
    params.require(:user).permit(:email, :password) # Include :name
  end
end
