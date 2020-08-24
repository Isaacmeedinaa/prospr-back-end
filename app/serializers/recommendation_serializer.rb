class RecommendationSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
  has_one :browser
end
