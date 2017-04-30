class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :name, :image_url, :phone_number)
  end

  def account_update_params
    params.require(:user).permit(:name, :image_url, :email, :password, :password_confirmation, :current_password, :phone_number)
  end
end
