require 'faker'

FactoryGirl.define do 

	factory :task do |f|
		f.subject {"Doesnt matter now"}
		f.status {"ACTIVE"}
		f.priority{(1..10).to_a.sample}
	end

	
end