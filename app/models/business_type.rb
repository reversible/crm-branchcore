class BusinessType < ActiveRecord::Base
   self.per_page = 10;
   
   has_many :accounts
   
   attr_accessible :sector
   
   
   validates :sector,:presence=>true, :length => { :maximum => 50 }
   
   
end
