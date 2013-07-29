class AddSitesIdToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :site_id, :integer
  end
end
