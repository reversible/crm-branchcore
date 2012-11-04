# spec/factories/contacts.rb
require 'faker'

FactoryGirl.define do

 
  factory :business_type do |f|
 
    f.sector{ Faker::Company.name }
 
  end


	factory :business_type_with_long_sector_name, parent: :business_type do |f|
	 
	    f.sector{ Faker::Lorem.characters }
	 
	  end

end