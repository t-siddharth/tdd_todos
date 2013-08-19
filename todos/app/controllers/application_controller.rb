class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception

  def sign_in_as(email)
    session[:current_email] = email
  end

  def current_user
    User.new(session[:current_email])
  end

end
