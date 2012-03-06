class PrizeBox < ActiveRecord::Base
  has_many :charms_prize_box
  has_many :charms, :through=>:charms_prize_box
  belongs_to :user
  
end
