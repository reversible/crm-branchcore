# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

user = User.create([
  { first_name: 'Raul Ivan', last_name:"Garcia Valdivia",username:"reversible_82",password:"kamikaze",email:"raul.ivan.82@hotmail.com",is_admin:true },
  { first_name: 'Mario', last_name:"Zarate",username:"zarate_82",password:"password",email:"zarate82@hotmail.com",is_admin:false},
   { first_name: 'Jose', last_name:"Morris",username:"morris_82",password:"password",email:"morris.82@hotmail.com",is_admin:false },
    { first_name: 'Adriana', last_name:"Utomic",username:"utonic_82",password:"password",email:"utomic.82@hotmail.com",is_admin:false},
     { first_name: 'Karla', last_name:"Kwan",username:"kwan_82",password:"password",email:"kwan.82@hotmail.com",is_admin: false}
])