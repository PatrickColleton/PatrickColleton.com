class RegistrationsController < Devise::RegistrationsController
  private
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :access_level)
  end
  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :access_level)
  end
end
