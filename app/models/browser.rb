class Browser < ApplicationRecord
    has_many :recommendations
    has_many :likes
    has_many :comments
    has_many :props, through: :likes

    has_secure_password
end
