class Opportunity < ActiveRecord::Base
  
    belongs_to :user
    belongs_to :account
    
    self.per_page = 10;
  
    attr_accessible :user,:user_id, :account,:account_id,:amount,:status,:description
    
    validates :user, :presence=>true  
    validates :account, :presence=>true  
    validates :status, :presence=>true 
    
    validates :amount, :presence => true, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, :numericality => true
    validates :description, :presence=>true, :length => {:minimum=>15, :maximum => 1000 }
end
