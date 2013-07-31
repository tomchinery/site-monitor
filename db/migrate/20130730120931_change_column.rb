class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :sites, :interval, :integer
  end
end
