class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # You should now see a missing template error. But wait, didn't we say sign_in_and_redirect?
  # Where are we being redirected to?
  # It turns out that Devise doesn't know automatically.
  # We have to write a method in our ApplicationController
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end

end
