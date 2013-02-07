class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :location
      t.integer :pool_count
      t.string :income
      t.string :sale_price
      t.boolean :status

      t.timestamps
    end
  end
end
