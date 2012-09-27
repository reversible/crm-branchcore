class User < ActiveRecord::Base
  # attr_accessible :title, :body
  
attr_accessible  :first_name, :last_name, :username, :password, :email, :is_admin
  
  
  def name
    "#{first_name} #{last_name}"
  end  
  
end
