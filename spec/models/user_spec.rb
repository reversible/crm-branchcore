require 'spec_helper'

describe User do

  
it "has a valid factory" do
 	user = FactoryGirl.build :user
 	user.should be_valid 
  end

it "can be saved" do

  	user= FactoryGirl.build :user
  	user.save
  	user.id.should_not == nil
end



it "is invalid without first name" do 

	user=FactoryGirl.build :user, :first_name=>nil
	user.should be_invalid

end

	it "is invalid without last name" do 

	user=FactoryGirl.build :user, :last_name=>nil
	user.should be_invalid

end


it "is invalid without password" do

user = FactoryGirl.build :user, :password=>nil
user.should be_invalid

end


context "email" do

it "should be present" do

	user = FactoryGirl.build :user, :email=>nil
	user.should be_invalid	
end

it "should be unique" do

		user1 = FactoryGirl.build :user
		user1.save

		user2 = FactoryGirl.build :user, :email => user1.email
		user2.should be_invalid	
end

end

end