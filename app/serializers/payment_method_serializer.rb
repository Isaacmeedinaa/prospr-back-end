class PaymentMethodSerializer < ActiveModel::Serializer
  attributes :id, :card_number, :month, :year, :cvv, :first_name, :last_name, :address_one, :address_two, :city, :state, :country
  has_one :pro
end
