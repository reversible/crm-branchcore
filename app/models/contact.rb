class Contact < ActiveRecord::Base
  # attr_accessible :title, :body
  
  
  belongs_to :user
  has_many :tasks
  
  
  self.per_page = 10;

  
  attr_accessible :first_name, :last_name, :address, :status, :email,:email_confirmation, :user ,:user_id

EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i  



validates :user, :presence=>true  
validates :status, :presence=>true  
validates :first_name, :presence=>true, :length => { :maximum => 40 }
validates :last_name, :presence=>true, :length => { :maximum => 40 }
validates :address, :presence=>true, :length => {:minimum=>15, :maximum => 1000 }
validates :email,:presence=>true, :uniqueness => true, :format => EMAIL_REGEX, :confirmation => true,:length => { :maximum => 100 }  



 def name
    "#{first_name} #{last_name}"
  end  


end
