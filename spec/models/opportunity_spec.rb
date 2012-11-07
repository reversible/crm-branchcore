require 'spec_helper'

describe Opportunity  do

before :each do
      
      user = FactoryGirl.build :user
      user.save
      @user = user


      business_type = FactoryGirl.build :business_type
      business_type.save
      @business_type = business_type


	  account = FactoryGirl.build :account, :user => @user, :business_type =>@business_type
 	  account.save
	  @account = account 




      business_type = FactoryGirl.build :business_type
      business_type.save
      @business_type = business_type
end


it "has a valid factory" do

 	opportunity = FactoryGirl.build :opportunity, :account =>@account, :user => @user
 	opportunity.should be_valid 
	
end




it "is invalid without status" do 

	opportunity = FactoryGirl.build :opportunity, :account =>@account, :user => @user, :status => nil
 	opportunity.should be_invalid 
	
end



it "is invalid without user assigned" do 

	opportunity = FactoryGirl.build :opportunity, :account =>@account, :user => nil
 	opportunity.should be_invalid 
	
end

it "is invalid without an account assigned" do 

	opportunity = FactoryGirl.build :opportunity, :account =>nil, :user => @user
 	opportunity.should be_invalid 
	
end


end