class Picture < ApplicationRecord
	belongs_to :album, optional: true
end
