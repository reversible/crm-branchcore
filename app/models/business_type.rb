class BusinessType < ActiveRecord::Base
   self.per_page = 10;
   
   has_many :accounts
   
   attr_accessible :sector
end
