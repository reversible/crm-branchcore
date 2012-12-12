require 'spec_helper'

describe BusinessType do
  
  it "has a valid factory" do
  	FactoryGirl.create(:business_type).should be_valid
  end


  it "is invalid without a sector name" do
	FactoryGirl.build(:business_type, :sector => nil).should_not be_valid  	
  end

  it "is invalid with a sector name with more than 50 characters" do
  FactoryGirl.build(:business_type_with_long_sector_name).should_not be_valid
  end


end