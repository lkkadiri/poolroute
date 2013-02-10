class AddPoolIdToStatus < ActiveRecord::Migration
  def change
    add_column :statuses, :pool_id, :integer
  end
end
