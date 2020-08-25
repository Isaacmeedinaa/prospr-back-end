class ProspSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
  has_many :prosp_images
  has_many :prosp_likes
  has_many :prosp_comments
  belongs_to :pro
  belongs_to :browser
end
