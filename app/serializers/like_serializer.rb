class LikeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :browser
  has_one :pro
  has_one :recommendation
  has_one :prosp
end
