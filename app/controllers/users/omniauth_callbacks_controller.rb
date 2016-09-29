class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  # The action should have the same name as the provider
  def github
    #code to handle the Omniauth callback.
    # Remember that .from_omniauth() is a class method we write ourselves
    # auth_hash = request.env['omniauth.auth']
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user 
  end

end
