class AddAlbumToPicture < ActiveRecord::Migration[5.0]
  def change
	  add_reference :pictures, :album, index: true
  end
end
