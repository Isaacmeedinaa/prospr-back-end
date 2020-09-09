class RecommendationSerializer < ActiveModel::Serializer
  include ActionView::Helpers::DateHelper

  attributes :id, :title, :content, :posted_on
  has_many :recommendation_images
  has_many :recommendation_likes
  has_many :recommendation_comments
  belongs_to :browser

  def posted_on
    if 6.days.ago >= @object.created_at
      @object.created_at.strftime("%b %d, %Y at %I:%M %p")
    else
      time_ago = time_ago_in_words(@object.created_at)
      if time_ago.include? 'about '
        time_ago.slice! 'about '
        time_ago_statement = time_ago + ' ' + 'ago'
      else
        time_ago_statement = time_ago + ' ' + 'ago'
      end
    end
  end
end
