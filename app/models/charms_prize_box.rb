class CharmsPrizeBox < ActiveRecord::Base
  belongs_to :charm
  belongs_to :prize_box

end
