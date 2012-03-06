class User < ActiveRecord::Base
  include Clearance::User
  
  has_many :user_activity
  has_many :activities, :through=>:user_activity
  has_one :prize_box
  
  after_create :setup_activities, :create_prize_box
  
  def setup_activities
    Activity.all.map{|activity| UserActivity.create(:user_id=>self.id,:activity_id=>activity.id,:status=>ACTIVITY_PENDING)}  
  end
  
  def create_prize_box
    PrizeBox.create(:user_id=>self.id)
  end
  
  def complete_activity(activity)
    my_activity=UserActivity.find(:first,:conditions=>['user_id=? AND activity_id=?',self.id,activity.id])
    my_activity.status=ACTIVITY_DONE
    my_activity.save!
    check_rewards
  end
  
  def check_rewards
    Charm.find(:all,:conditions=>['merit<=?',my_merits]).map{|c| c.add_charm(self.prize_box)}    
  end
  
  def my_merits
    self.user_activity.count(:all,:conditions=>['status=?',ACTIVITY_DONE])
  end

end
