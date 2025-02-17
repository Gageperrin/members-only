class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def current_user
    @current_user ||= User.find_by(remember_digest: User.digest(cookies[:user_token].to_s))
  end

  def current_user=(user)
    @current_user = user
  end

  def check_signed_in
    if current_user.nil?
      flash[:danger] = "Please sign in"
      redirect_to login_path
    end
  end
end
