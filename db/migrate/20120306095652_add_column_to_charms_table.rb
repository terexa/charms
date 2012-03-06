class AddColumnToCharmsTable < ActiveRecord::Migration
  def up
    add_column :charms, :merit, :integer
  end

  def down
    remove_column :charms, :merit
  end
end
