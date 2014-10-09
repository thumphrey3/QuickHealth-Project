class CaseSyndrome < ActiveRecord::Base
  belongs_to :case
  belongs_to :syndrome 
end
