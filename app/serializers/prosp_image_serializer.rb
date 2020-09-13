class ProspImageSerializer < ActiveModel::Serializer
  attributes :id, :img_url, :img_type
  belongs_to :prosp
end
