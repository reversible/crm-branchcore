class BusinessType < ActiveRecord::Base
   self.per_page = 10;
   
   attr_accessible :sector
end
