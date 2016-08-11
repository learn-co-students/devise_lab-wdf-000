class WelcomeController < ApplicationController

  def home
  end

  def about
  end

  def sign_out
    flash[:notice] = "Signed out successfully."
  end

end
