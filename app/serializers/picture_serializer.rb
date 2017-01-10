class PictureSerializer < ActiveModel::Serializer
  attributes :id, :name, :bucket, :key
end
