class Activity < ActiveRecord::Base
  
  has_many :user_activity
  has_many :user, :through=>:user_activity
  
end
