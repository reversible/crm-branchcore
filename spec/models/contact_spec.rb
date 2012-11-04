require 'spec_helper'

describe Contact  do

before :each do
      user = FactoryGirl.build :user
      user.save
      @user = user
end


it "has a valid factory" do

 	contact = FactoryGirl.build :contact, :user => @user
 	contact.should be_valid 
	
end


it "is invalid without first name" do 

	contact = FactoryGirl.build :contact,:first_name => nil ,:user=>@user
	contact.should be_invalid
	
end

it "is invalid without last name" do 

	contact = FactoryGirl.build :contact,:last_name => nil ,:user=>@user
	contact.should be_invalid
	
end

it "is invalid without user assigned" do 

	contact = FactoryGirl.build :contact, :user => nil
	contact.should be_invalid
	
end

it "is invalid without a status" do

contact = FactoryGirl.build :contact, :status => nil, :user=>@user
contact.should be_invalid

end



it "is invalid without an address" do 
contact =  FactoryGirl.build :contact, :address => nil, :user=>@user
contact.should be_invalid
end

context "email" do

	it "should be present" do

	contact = FactoryGirl.build :contact, :email => nil, :user=>@user
	contact.should be_invalid

	end


	it "should be unique" do 
	contact =  FactoryGirl.create :contact, :user=>@user
	contact2 = FactoryGirl.build :contact, :email =>contact.email, :user=>@user

	contact.should be_valid
	contact2.should be_invalid
	end 

end

end