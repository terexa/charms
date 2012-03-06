class CreateCharmsPrizeBoxes < ActiveRecord::Migration
  def self.up
    create_table :charms_prize_boxes do |t|
      t.integer :charm_id
      t.integer :prize_box_id
      t.timestamps
    end
  end
  def self.down
    drop_table :charms_prize_boxes
  end
end
