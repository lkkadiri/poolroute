class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :name
      t.string :file_path
      t.string :type
      t.references :pool
      t.references :route
      t.references :organization

      t.timestamps
    end
    add_index :uploads, :pool_id
    add_index :uploads, :route_id
    add_index :uploads, :organization_id
  end
end
