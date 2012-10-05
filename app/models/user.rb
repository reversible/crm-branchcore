class User < ActiveRecord::Base
  # attr_accessible :title, :body
  
has_many :contacts
has_many :accounts
has_many :opportunities

self.per_page = 10;
  
attr_accessible  :first_name, :last_name, :username, :password,:password_confirmation, :email, :email_confirmation, :is_admin

EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i  
  
validates :first_name,:presence=>true, :length => { :maximum => 40 }
validates :last_name,:presence=>true, :length => { :maximum => 40 }
validates :username,:presence=>true, :uniqueness => true, :length => { :maximum => 25 }
validates :password,:presence=>true, :length => { :maximum => 25 }, :confirmation => true
validates :email,:presence=>true, :uniqueness => true, :format => EMAIL_REGEX, :confirmation => true,:length => { :maximum => 100 }  


  def name
    "#{first_name} #{last_name}"
  end  
  
end
