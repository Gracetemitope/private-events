class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:username)
  end

  def account_update_params
    params.require(:user).permit(:username)
  end
end
