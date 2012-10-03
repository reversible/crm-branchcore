class TasksController < ApplicationController
  
  
  layout "admin"
  
  def  index
    
    @tasks= Task.paginate(:page => params[:page])
    
    render "list"

  end

  def list

    @tasks= Task.paginate(:page => params[:page])

    respond_to do |format|

      format.html
      format.xml {render :xml => @tasks}

    end

  end

  def new

    @task= Task.new
    @accounts = Account.order('id ASC')
    @users = User.order('id ASC')
    @contacts = Contact.order('id ASC')
    @tasks= Task.paginate(:page => params[:page])

  end

  def create

    @task= Task.new(params[:task])

    if @Task.save

      flash[:notice] = "Task created"

      redirect_to :action => "list"

    else
      render "new"

    end
  end

  def edit
    @task= Task.find(params[:id])
    
        @accounts = Account.order('id ASC')
        @users = User.order('id ASC')
        @contacts = Contact.order('id ASC')


  end

  def update
    @task= Task.find(params[:id])
    if @task.update_attributes(params[:task])
      flash[:notice] = 'Task updated.'
      redirect_to(:action => 'list')
    else
      render("edit")
    end
  end

  def delete
    @task= Task.find(params[:id])
  end

  def destroy
    Task.find(params[:id]).destroy
    flash[:notice] = "Task destroyed."
    redirect_to(:action => 'list')
  end

  
end
