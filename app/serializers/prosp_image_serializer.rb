class ProspImageSerializer < ActiveModel::Serializer
  attributes :id, :img_url
  belongs_to :prosp
end
