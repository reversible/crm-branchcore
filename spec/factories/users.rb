require 'faker'

FactoryGirl.define do

	factory :user do |f|

		email = Faker::Internet.email
		password = "reversible_82"

		f.first_name {Faker::Name.first_name}
		f.last_name {Faker::Name.last_name}
		f.username {Faker::Internet.user_name}
		f.password {password}
		f.password_confirmation {password}
		f.email {email}
		f.email_confirmation {email} 
		f.is_admin {true}
	end


end