class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    @user.email = "fix your stuff facebook"
    sign_in_and_redirect @user
  end
end
