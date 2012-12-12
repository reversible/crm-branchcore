# spec/controllers/users_controller_spec.rb
require 'spec_helper'

describe Admin::UsersController do

before :each do
      user = FactoryGirl.build :user
      user.save
      @user = user

#set the session user in order to bypass the authentication      
	session[:current_user]=@user

end



describe "GET #index" do
 

	  

	  it "should render the :index view" do 

	  	get :index
	  	response.should render_template :list

	  end

  end


end