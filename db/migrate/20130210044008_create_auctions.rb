class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :pool
      t.references :status

      t.timestamps
    end
    add_index :auctions, :pool_id
    add_index :auctions, :status_id
  end
end
