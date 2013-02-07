class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :zip
      t.string :phone

      t.timestamps
    end
  end
end
