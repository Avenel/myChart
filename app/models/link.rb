class Link < ActiveRecord::Base

  attr_accessible :person_id, :to
  
  has_one :person

end
