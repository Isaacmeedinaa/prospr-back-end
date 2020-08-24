class Pro < ApplicationRecord
    has_many :prosps
    has_many :likes, through: :prosps
    has_one :payment_method

    has_secure_password
end
