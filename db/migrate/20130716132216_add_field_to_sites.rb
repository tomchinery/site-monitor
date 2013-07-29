class AddFieldToSites < ActiveRecord::Migration
  def change
    add_column :sites, :on_off, :boolean
  end
end
