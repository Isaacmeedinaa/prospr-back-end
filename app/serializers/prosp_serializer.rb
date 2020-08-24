class ProspSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
  has_one :prosprimage
  has_one :pro
  has_one :browser
end
