class AccountsController < ApplicationController

  layout "admin"
  
    before_filter :confirm_logged_in
  
  def  index

    @accounts= Account.paginate(:page => params[:page])

    render "list"

  end

  def list

    @accounts= Account.paginate(:page => params[:page])

    respond_to do |format|

      format.html
      format.xml {render :xml => @accounts}

    end

  end

  def new

    @account = Account.new
    @users = User.order('id ASC')
    @business_types = BusinessType.order('id ASC')

  end

  def create

    @account = Account.new(params[:account])

    if @account.save

      flash[:notice] = "Account created"

      redirect_to :action => "list"

    else

      @users = User.order('id ASC')
      @business_types = BusinessType.order('id ASC')
      render "new"

    end
  end

  def edit
    @account = Account.find(params[:id])
    @users = User.order('id ASC')
    @business_types = BusinessType.order('id ASC')

  end

  def update
    @account = Account.find(params[:id])
    if @account.update_attributes(params[:account])
      flash[:notice] = 'Account updated.'
      redirect_to(:action => 'list')
    else
      @users = User.order('id ASC')
      @business_types = BusinessType.order('id ASC')
      render("edit")
    end
  end

  def delete
    @account = Account.find(params[:id])
  end

  def destroy
    Account.find(params[:id]).destroy
    flash[:notice] = "Account destroyed."
    redirect_to(:action => 'list')
  end

end
