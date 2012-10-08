class OpportunitiesController < ApplicationController
  
  
   layout "admin"
  
  
  
    before_filter :confirm_logged_in
    
    
  def  index
    
    @opportunities= Opportunity.paginate(:page => params[:page])
    
    render "list"

  end

  def list

    @opportunities= Opportunity.paginate(:page => params[:page])

    respond_to do |format|

      format.html
      format.xml {render :xml => @opportunities}

    end

  end

  def new

    @opportunity = Opportunity.new
    @users = User.order('id ASC')
    @accounts = Account.order('id ASC')

  end

  def create

    @opportunity = Opportunity.new(params[:opportunity])

    if @opportunity.save

      flash[:notice] = "Opportunity created"

      redirect_to :action => "list"

    else
    @users = User.order('id ASC')
    @accounts = Account.order('id ASC')
      render "new"

    end
  end

  def edit
    @opportunity = Opportunity.find(params[:id])
    @users = User.order('id ASC')
     @accounts = Account.order('id ASC')

  end

  def update
    @opportunity = Opportunity.find(params[:id])
    if @opportunity.update_attributes(params[:opportunity])
      flash[:notice] = 'Opportunity updated.'
      redirect_to(:action => 'list')
    else
      @users = User.order('id ASC')
      @accounts = Account.order('id ASC')
      render("edit")
    end
  end

  def delete
    @opportunity = Opportunity.find(params[:id])
  end

  def destroy
    Opportunity.find(params[:id]).destroy
    flash[:notice] = "Opportunity destroyed."
    redirect_to(:action => 'list')
  end

  
end
