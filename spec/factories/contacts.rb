require 'faker'

FactoryGirl.define do 

	factory :contact do |f|

		email = Faker::Internet.email

		f.first_name {Faker::Name.first_name}
		f.last_name {Faker::Name.last_name}
		f.status {"ACTIVE"}
		f.address {Faker::Lorem.characters }
		f.email {email}
		f.email_confirmation {email}

		
	end

	
end