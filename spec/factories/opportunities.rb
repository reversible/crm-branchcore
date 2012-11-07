require 'faker'

FactoryGirl.define do 

	factory :opportunity do |f|

		f.amount { 5000 }
		f.status {"ACTIVE"}
		f.description{Faker::Lorem.characters }
		

	end

	
end