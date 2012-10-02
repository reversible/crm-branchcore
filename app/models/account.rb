class Account < ActiveRecord::Base

self.per_page = 10;
 
belongs_to :user
belongs_to :business_type
    
attr_accessible :name, :email, :address, :description, :account_type, :user ,:user_id, :business_type ,:business_type_id

end
