class AccessController < ApplicationController
  layout 'access'

  before_filter :confirm_logged_in, :except => [:sign_in, :attempt_login, :logout]
  def index
    menu
    render('menu')
  end

  def menu
    # display text & links
  end

  def sign_in
    # login form
  end

  def attempt_login
   current_user = User.authenticate(params[:username], params[:password])
    if current_user
      session[:current_user] = current_user
      flash[:notice] = "You are now logged in."
      redirect_to(:controller=>"users")
    else
      flash[:notice] = "Invalid username/password combination."
      redirect_to(:action => 'sign_in')
    end

  end

  def logout
    session[:current_user] = nil
    flash[:notice] = "You have been logged out."
    redirect_to(:action => "sign_in")
  end

  def sing_up
  end
end
