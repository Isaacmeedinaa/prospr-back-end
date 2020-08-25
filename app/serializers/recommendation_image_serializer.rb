class RecommendationImageSerializer < ActiveModel::Serializer
  attributes :id, :img_url
  belongs_to :recommendation
end
