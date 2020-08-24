class ProspImageSerializer < ActiveModel::Serializer
  attributes :id, :img_url
  has_one :prosp
end
