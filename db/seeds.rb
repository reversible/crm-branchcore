# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
100.times do
  
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
100.times do
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
100.times do
business_type = BusinessType.create([
  { sector: 'Information Technology'},
  { sector: 'Bio-Technology'},
  { sector: 'Administrative'},
])
end
puts "Success: Business types data loaded"
