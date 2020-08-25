class Browser < ApplicationRecord
    has_many :recommendations, dependent: :destroy
    has_many :recommendation_likes, dependent: :destroy
    has_many :prosp_likes, dependent: :destroy
    has_many :prosp_comments, dependent: :destroy
    has_many :recommendation_comments, dependent: :destroy
    has_many :prosps, through: :prosp_likes

    has_secure_password
end
