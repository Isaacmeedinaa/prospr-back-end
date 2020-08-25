class PaymentMethodSerializer < ActiveModel::Serializer
  attributes :id, :card_number, :month, :year, :cvv, :card_type, :first_name, :last_name, :address_line_one, :address_line_two, :city, :state, :zipcode, :country
  belongs_to :pro
end
