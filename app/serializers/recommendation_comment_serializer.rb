class RecommendationCommentSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :browser
  has_one :recommendation
end
