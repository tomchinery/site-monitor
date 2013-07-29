class AddRequest < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :url
      t.string :interval
      t.string :code
      t.string :message
      t.string :response_time

      t.timestamps
    end
  end
end
