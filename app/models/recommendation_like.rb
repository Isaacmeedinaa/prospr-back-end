class RecommendationLike < ApplicationRecord
  belongs_to :browser
  belongs_to :recommendation
end
