require 'spec_helper'

describe Account  do

before :each do
      user = FactoryGirl.build :user
      user.save
      @user = user


      business_type = FactoryGirl.build :business_type
      business_type.save
      @business_type = business_type
end


it "has a valid factory" do

 	account = FactoryGirl.build :account, :user => @user, :business_type =>@business_type
 	account.should be_valid 
	
end


it "is invalid without name" do 

	account = FactoryGirl.build :account, :user => @user, :business_type =>@business_type, :name => nil
	account.should be_invalid
	
end


it "is invalid without user assigned" do 

	account = FactoryGirl.build :account, :user => nil, :business_type =>@business_type
	account.should be_invalid
	
end

it "is invalid without business type assigned" do 

	account = FactoryGirl.build :account, :user => @user, :business_type => nil
	account.should be_invalid
	
end



it "is invalid without an address" do 
	
	account =  FactoryGirl.build :account, :user => @user, :business_type => @business_type, :address => nil
	account.should be_invalid

end

context "email" do

	it "should be present" do

	account = FactoryGirl.build :account, :user=>@user, :business_type => @business_type, :email => nil
	account.should be_invalid

	end


	it "should be unique" do 
	account =  FactoryGirl.create :account, :user=>@user, :business_type=>@business_type
	account2 = FactoryGirl.build :account, :user=>@user, :business_type=>@business_type, :email =>account.email

	account.should be_valid
	account2.should be_invalid
	end 

end

end