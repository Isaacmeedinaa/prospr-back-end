class ProspLikeSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :browser
  belongs_to :pro
  belongs_to :prosp
end
