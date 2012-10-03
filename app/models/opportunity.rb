class Opportunity < ActiveRecord::Base
  
    belongs_to :user
    belongs_to :account
    
    self.per_page = 10;
  
  attr_accessible :user,:user_id, :account,:account_id,:amount,:status,:description
end
