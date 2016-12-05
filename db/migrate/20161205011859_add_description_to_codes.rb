class AddDescriptionToCodes < ActiveRecord::Migration[5.0]
  def change
	  add_column :codes, :description, :string
  end
end
