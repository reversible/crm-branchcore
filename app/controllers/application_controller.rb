class ApplicationController < ActionController::Base
  protect_from_forgery
  
    protected
  
  def confirm_logged_in
    unless session[:current_user]
      flash[:notice] = "Please log in."
      redirect_to("/access/sign_in");
      return false # halts the before_filter
    else
      return true
    end
  end
  
end
