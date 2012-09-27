class UsersController < ApplicationController

  layout "admin"
  
  
  def index
     @users = User.all
     render "list"
  end
  
  
  
  def list

    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end

  end


  def new

    @user = User.new

  end

  def create

    @user = User.new(params[:user])
    if @user.save

      flash[:notice] = 'User created.'

      redirect_to(:action => 'list')

    else
      render("new")
    end

  end

  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = 'User updated.'
      redirect_to(:action => 'list')
    else
      render("edit")
    end
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:notice] = "Admin user destroyed."
    redirect_to(:action => 'list')
  end

end
