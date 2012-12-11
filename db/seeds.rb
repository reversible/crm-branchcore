# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name=> 'Chicago' }, { :name=> 'Copenhagen' }])
#   Mayor.create(:name=> 'Emanuel', city: cities.first)

#350.times do
  
user = User.new( :first_name => 'Raul Ivan', :last_name =>"Garcia Valdivia", :username => 'reversible_82', :password => "kamikaze",:email=> 'raul.ivan.82@hotmail.com',:is_admin=> true )

user.save

#end


#puts "Success: Users data loaded"


Contact.delete_all
50.times do |i|
contacts = Contact.create([
  { :first_name=> 'Raul Ivan', :last_name=>"Garcia Valdivia",:address=>"Calle Amadis de Gaula No 2323, Villas del Rey", :status=>"ACTIVE",:email=>"#{1.to_s}raul.ivan.82@hotmail.com",:user=> User.last },
  { :first_name=> 'Mario', :last_name=>"Zarate",:address=>"Calle Amadis de Gaula No 2323, Villas del Rey",:status=>"ACTIVE", :email=>"#{1.to_s}zarate82@hotmail.com",:user=> User.last},
   { :first_name=> 'Jose', :last_name=>"Morris",:address=>"Calle Amadis de Gaula No 2323, Villas del Rey",:status=>"ACTIVE", :email=>"#{1.to_s}morris.82@hotmail.com",:user=> User.last },
    { :first_name=> 'Adriana', :last_name=>"Utomic",:address=>"Calle Amadis de Gaula No 2323, Villas del Rey",:status=>"ACTIVE", :email=>"#{1.to_s}utomic.82@hotmail.com",:user=> User.last},
     { :first_name=> 'Karla', :last_name=>"Kwan",:address=>"Calle Amadis de Gaula No 2323, Villas del Rey",:status=>"ACTIVE", :email=>"#{1.to_s}kwan.82@hotmail.com",:user=> User.last}
])
end
puts "Success: Contacts data loaded"


BusinessType.delete_all

business_type = BusinessType.create([
  { :sector=> 'Information Technology'},
  { :sector=> 'Bio-Technology'},
  { :sector=> 'Administrative'},
])
puts "Success: Business types data loaded"


Account.delete_all
accounts = Account.create([
  { :name=> 'Nike', :address=> "some place in NYC", :description=>"Great shoes company", :account_type=> "enterprice", :email=> "rg@rdedeg.com", :user=> User.last , :business_type=> BusinessType.last  },
  { :name=> 'CocaCOla', :address=> "some place in Minesota", :description=>"Great Soda company", :account_type=> "small", :email=> "rgc@rdedeg.com",  :user=> User.last , :business_type=> BusinessType.last  },
  { :name=> '37 Signals', :address=> "some place in Chicago", :description=>"Web application", :account_type=> "huge", :email=> "rgr@rdedeg.com",  :user=> User.last , :business_type=> BusinessType.last },
])
puts "Success: Accounts data loaded"

Opportunity.delete_all
opportunities = Opportunity.create([
  { :amount=> 10000.00, :status=> "ACTIVE", :description=>"Talks with nike in order to design the new product", :user=> User.last, :account=> Account.last  },
    { :amount=> 500000.00, :status=> "INACTIVE", :description=>"Talks with two in a half man", :user=> User.last, :account=> Account.last  }
 
])
puts "Success: Opportunities data loaded"


Task.delete_all
task = Task.create([
{ :subject=> "Deliver the Project Plan", :status=> "ACTIVE", :start_date=> DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M") , :limit_date => DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), :end_date => DateTime.strptime("09/20/2009 8:00", "%m/%d/%Y %H:%M"), :priority => 1 , :user=> User.last, :account=> Account.last, :contact => Contact.last },
{ :subject=> "Meeting with the BR", :status=> "ACTIVE", :start_date=> DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), :limit_date => DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), :end_date => DateTime.strptime("09/20/2009 8:00", "%m/%d/%Y %H:%M"), :priority => 2 ,  :user=> User.last, :account=> Account.last, :contact => Contact.last },
{ :subject=> "Tea time with british airlines", :status=> "ACTIVE", :start_date=> DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), :limit_date => DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), :end_date => DateTime.strptime("09/20/2009 8:00", "%m/%d/%Y %H:%M"), :priority => 3 , :user=> User.last, :account=> Account.last, :contact => Contact.last },    
 
])
puts "Success: Task data loaded"


