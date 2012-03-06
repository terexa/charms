class Charm < ActiveRecord::Base
  has_many :charms_prize_box
  has_many :prize_boxes, :through=>:charms_prize_box
  
  # Add charm to some prize_box
  def add_charm(some_prize_box)
    some_prize_box.create_prize_box_if_none unless some_prize_box.kind_of?(PrizeBox)
    prize_box = some_prize_box.respond_to?(:prize_box) ? some_prize_box.prize_box : some_prize_box
    unless prize_box.charms.include? self
      prize_box.charms << self
      prize_box.save
    end
  end
end
