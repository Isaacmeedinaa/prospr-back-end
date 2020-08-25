class RecommendationCommentSerializer < ActiveModel::Serializer
  attributes :id, :content
  belongs_to :browser
  belongs_to :recommendation
end
