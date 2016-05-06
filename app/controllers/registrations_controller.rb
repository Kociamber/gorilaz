class RegistrationsController < Devise::RegistrationsController

  before_action :two_users_registered?

  protected

  def two_users_registered?
    if ((User.count == 2) & (user_signed_in?))
      redirect_to root_path
    elsif User.count == 2
      redirect_to new_user_session_path
    end
  end

end
