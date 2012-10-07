class Account < ActiveRecord::Base

self.per_page = 10;

 
belongs_to :user
belongs_to :business_type
has_many :opportunities

EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i  

validates :user, :presence=>true  
validates :business_type, :presence=>true  
validates :account_type, :presence=>true 
validates :name, :presence=>true, :length => { :maximum => 40 }
validates :email,:presence=>true, :uniqueness => true, :format => EMAIL_REGEX, :length => { :maximum => 100 }  
validates :address, :presence=>true, :length => {:minimum=>15, :maximum => 1000 }
validates :description, :presence=>true, :length => {:minimum=>15, :maximum => 1000 }


attr_accessible :name, :email, :address, :description, :account_type, :user ,:user_id, :business_type ,:business_type_id

end
