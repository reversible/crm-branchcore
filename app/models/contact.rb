class Contact < ActiveRecord::Base
  # attr_accessible :title, :body
  
  
  belongs_to :user

  
  attr_accessible :first_name, :last_name, :address, :status, :email,:user_id

 def name
    "#{first_name} #{last_name}"
  end  


end
