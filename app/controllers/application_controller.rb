class ApplicationController < ActionController::Base
  protect_from_forgery

  include SessionsHelper

  def authenticate_user!
    redirect to new_session_url unless logged_in?
  end
end
