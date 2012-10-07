class Task < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :user
  belongs_to :account
  belongs_to :contact
  
  self.per_page = 10;
  
    validates :user, :presence=>true  
    validates :account, :presence=>true  
    validates :contact, :presence=>true 
    validates :subject, :presence=>true, :length => { :maximum => 40 }
    validates :status, :presence=>true

  
  attr_accessible :subject, :status, :start_date, :limit_date, :end_date,:priority, :user ,:user_id, :account ,:account_id, :contact ,:contact_id
  
  
end
