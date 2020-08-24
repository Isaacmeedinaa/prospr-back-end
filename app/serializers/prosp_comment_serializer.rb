class ProspCommentSerializer < ActiveModel::Serializer
  attributes :id, :content
  belongs_to :browser
  belongs_to :prosp
end
