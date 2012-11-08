require 'spec_helper'

describe Task  do

before :each do
      user = FactoryGirl.build :user
      user.save
      @user = user


      contact = FactoryGirl.build :contact, :user=>@user
      contact.save
      @contact = contact


	  business_type = FactoryGirl.build :business_type
      business_type.save
      @business_type = business_type


	  account = FactoryGirl.build :account, :user => @user, :business_type =>@business_type
 	  account.save
	  @account = account 



end


it "has a valid factory" do

 	task = FactoryGirl.build :task, :user => @user, :account =>@account, :contact => @contact
 	task.should be_valid 
	
end


it "is invalid without subject" do 

	task = FactoryGirl.build :task, :user => @user, :account =>@account, :contact => @contact, :subject => nil
 	task.should be_invalid
	
end




it "is invalid without status" do 

	task = FactoryGirl.build :task, :user => @user, :account =>@account, :contact => @contact, :status => nil
 	task.should be_invalid
	
end

it "is invalid without user" do 

	task = FactoryGirl.build :task, :user => nil, :account =>@account, :contact => @contact
 	task.should be_invalid
	
end


it "is invalid without user" do 

	task = FactoryGirl.build :task, :user => nil, :account =>@account, :contact => @contact
 	task.should be_invalid
	
end

it "is invalid without account" do 

	task = FactoryGirl.build :task, :user => @user, :account =>nil, :contact => @contact
 	task.should be_invalid
	
end


it "is invalid without contact" do 

	task = FactoryGirl.build :task, :user => @user, :account =>@account, :contact => nil
 	task.should be_invalid
	
end


end