class ProSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :date_of_birth, :business_name, :business_mission, :business_year_founded, :business_website, :business_industry, :address_line_one, :address_line_two, :city, :state, :country, :profile_img_url
  has_many :prosps
  has_many :prosp_likes, through: :prosps
  has_one :payment_method
end
