class Pro < ApplicationRecord
    has_many :prosps, dependent: :destroy
    has_many :prosp_likes, through: :prosps
    has_one :payment_method, dependent: :destroy

    has_secure_password
end
