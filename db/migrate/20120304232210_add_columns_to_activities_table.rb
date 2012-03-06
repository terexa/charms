class AddColumnsToActivitiesTable < ActiveRecord::Migration
  def up
    add_column :activities, :level, :integer
    add_column :activities, :details, :string
    add_column :activities, :question, :string
    add_column :activities, :answer, :boolean
  end

  def down
    remove_column :activities, :level
    remove_column :activities, :details
    remove_column :activities, :question
    remove_column :activities, :answer
  end
end
