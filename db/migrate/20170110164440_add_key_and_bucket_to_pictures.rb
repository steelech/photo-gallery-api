class AddKeyAndBucketToPictures < ActiveRecord::Migration[5.0]
  def change
	  add_column :pictures, :bucket, :string
	  add_column :pictures, :key, :string
  end
end
