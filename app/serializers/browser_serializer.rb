class BrowserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :date_of_birth, :city, :state, :country, :profile_img_url
  has_many :recommendations
  has_many :recommendation_comments
  has_many :recommendation_likes
  has_many :prosp_likes
  has_many :prosps, through: :prosp_likes
  has_many :prosp_comments
end
