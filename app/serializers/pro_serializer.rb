class ProSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :date_of_birth, :business_name, :business_mission, :business_year_founded, :address_line_one, :address_line_two, :city, :state, :country, :profile_img_url
end
