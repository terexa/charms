class CreatePrizeBoxes < ActiveRecord::Migration
  def self.up
    create_table :prize_boxes do |t|
      t.integer :user_id
      t.timestamps
    end
  end
  def self.down
    drop_table :prize_boxes
  end
end
