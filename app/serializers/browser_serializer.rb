class BrowserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :date_of_birth, :city, :state, :country, :profile_img_url
  has_many :recommendations
  has_many :likes
  has_many :comments
  has_many :props, through: :likes
end
