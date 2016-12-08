# create albums and pictures in those albums
#
count = 0
(0..3).each do |index|
	album = Album.create!(name: "Album #{index}")	
	(0..4).each do |index|
		album.pictures.create!(name: "Song #{count}")
		count +=1;
	end
end

