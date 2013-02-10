class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.references :auction
      t.float :amount
      t.datetime :bid_time

      t.timestamps
    end
    add_index :bids, :auction_id
  end
end
