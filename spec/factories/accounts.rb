require 'faker'

FactoryGirl.define do 

	factory :account do |f|

		email = Faker::Internet.email

		f.name {Faker::Name.first_name}
		f.email {email}
		f.address {Faker::Lorem.characters }
		f.description{Faker::Lorem.characters }
		f.account_type {"BIG"}

	end

	
end