class ContactsController < ApplicationController

  layout "admin"
  
  def  index
    
    @contacts= Contact.paginate(:page => params[:page])
    
    render "list"

  end

  def list

    @contacts= Contact.paginate(:page => params[:page])

    respond_to do |format|

      format.html
      format.xml {render :xml => @contacts}

    end

  end

  def new

    @contact = Contact.new
    @users = User.order('id ASC')

  end

  def create

    @contact = Contact.new(params[:contact])

    if @contact.save

      flash[:notice] = "Contact created"

      redirect_to :action => "list"

    else
      render "new"

    end
  end

  def edit
    @contact = Contact.find(params[:id])
    @users = User.order('id ASC')

  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      flash[:notice] = 'Contact updated.'
      redirect_to(:action => 'list')
    else
      render("edit")
    end
  end

  def delete
    @contact = Contact.find(params[:id])
  end

  def destroy
    Contact.find(params[:id]).destroy
    flash[:notice] = "Contact destroyed."
    redirect_to(:action => 'list')
  end

end
