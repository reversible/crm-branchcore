# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
50.times do
  
user = User.create([
  { first_name: 'Raul Ivan', last_name:"Garcia Valdivia",username:"reversible_82",password:"kamikaze",email:"raul.ivan.82@hotmail.com",is_admin:true },
  { first_name: 'Mario', last_name:"Zarate",username:"zarate_82",password:"password",email:"zarate82@hotmail.com",is_admin:false},
   { first_name: 'Jose', last_name:"Morris",username:"morris_82",password:"password",email:"morris.82@hotmail.com",is_admin:false },
    { first_name: 'Adriana', last_name:"Utomic",username:"utonic_82",password:"password",email:"utomic.82@hotmail.com",is_admin:false},
     { first_name: 'Karla', last_name:"Kwan",username:"kwan_82",password:"password",email:"kwan.82@hotmail.com",is_admin: false}
])

end


puts "Success: Users data loaded"


Contact.delete_all
50.times do
contact = Contact.create([
  { first_name: 'Raul Ivan', last_name:"Garcia Valdivia",address:"reversible_82",status:"kamikaze",email:"raul.ivan.82@hotmail.com",user: User.last },
  { first_name: 'Mario', last_name:"Zarate",address:"zarate_82",status:"status",email:"zarate82@hotmail.com",user: User.last},
   { first_name: 'Jose', last_name:"Morris",address:"morris_82",status:"status",email:"morris.82@hotmail.com",user: User.last },
    { first_name: 'Adriana', last_name:"Utomic",address:"utonic_82",status:"status",email:"utomic.82@hotmail.com",user: User.last},
     { first_name: 'Karla', last_name:"Kwan",address:"kwan_82",status:"status",email:"kwan.82@hotmail.com",user: User.last}
])
end
puts "Success: Contacts data loaded"


BusinessType.delete_all
50.times do
business_type = BusinessType.create([
  { sector: 'Information Technology'},
  { sector: 'Bio-Technology'},
  { sector: 'Administrative'},
])
end
puts "Success: Business types data loaded"


Account.delete_all
50.times do
accounts = Account.create([
  { name: 'Nike', address: "some place in NYC", description:"Great shoes company", account_type: "enterprice", email: "rg@rdedeg.com", user: User.last , business_type: BusinessType.last  },
  { name: 'CocaCOla', address: "some place in Minesota", description:"Great Soda company", account_type: "small", email: "rg@rdedeg.com",  user: User.last , business_type: BusinessType.last  },
  { name: '37 Signals', address: "some place in Chicago", description:"Web application", account_type: "huge", email: "rg@rdedeg.com",  user: User.last , business_type: BusinessType.last },
])
end
puts "Success: Accounts data loaded"

Opportunity.delete_all
50.times do
opportunities = Opportunity.create([
  { amount: 10000.00, status: "ACTIVE", description:"Talks with nike in order to design the new product", user: User.last, account: Account.last  },
    { amount: 500000.00, status: "INACTIVE", description:"Talks with two in a half man", user: User.last, account: Account.last  }
 
])
end
puts "Success: Opportunities data loaded"


Task.delete_all
50.times do
task = Task.create([
{ subject: "Deliver the Project Plan", status: "ACTIVE", start_date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M") , limit_date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), end_date: DateTime.strptime("09/20/2009 8:00", "%m/%d/%Y %H:%M"), priority: 1 , user: User.last, account: Account.last, contact: Contact.last },
{ subject: "Meeting with the BR", status: "ACTIVE", start_date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), limit_date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), end_date: DateTime.strptime("09/20/2009 8:00", "%m/%d/%Y %H:%M"), priority: 2 ,  user: User.last, account: Account.last, contact: Contact.last },
{ subject: "Tea time with british airlines", status: "ACTIVE", start_date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), limit_date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), end_date: DateTime.strptime("09/20/2009 8:00", "%m/%d/%Y %H:%M"), priority: 3 , user: User.last, account: Account.last, contact: Contact.last },    
 
])
end
puts "Success: Task data loaded"


