class RecommendationImageSerializer < ActiveModel::Serializer
  attributes :id, :img_url
  has_one :recommendation
end
