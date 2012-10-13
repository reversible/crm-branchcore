class Admin::BusinessTypesController < ApplicationController
  layout "admin"
  
    before_filter :confirm_logged_in
  
  def index
    @business_types= BusinessType.paginate(:page => params[:page])
     render "list"
  end
  
  
  
  def list
    
   @business_types= BusinessType.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @business_types }
    end

  end


  def new

    @business_type = BusinessType.new

  end

  def create

    @business_type = BusinessType.new(params[:business_type])
    if @business_type.save

      flash[:notice] = 'Business Type created.'

      redirect_to admin_business_types_path

    else
      render("new")
    end

  end

  
  def edit
    @business_type = BusinessType.find(params[:id])
  end

  def update
    @business_type = BusinessType.find(params[:id])
    if @business_type.update_attributes(params[:business_type])
      flash[:notice] = 'Business Type updated.'
          redirect_to admin_business_types_path
    else
      render("edit")
    end
  end

  def delete
    @business_type = BusinessType.find(params[:id])
  end

  def destroy
    BusinessType.find(params[:id]).destroy
    flash[:notice] = "Business Type deleted."
         redirect_to admin_business_types_path
  end

end
