class Browser < ApplicationRecord
    # database associations
    has_many :recommendations, dependent: :destroy
    has_many :recommendation_likes, dependent: :destroy
    has_many :prosp_likes, dependent: :destroy
    has_many :prosp_comments, dependent: :destroy
    has_many :recommendation_comments, dependent: :destroy
    has_many :prosps, through: :prosp_likes

    # validations
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true, case_sensitive: false, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :phone_number, presence: true, uniqueness: true, format: { with: /\A\d+\z/ }
    validates :password, presence: true, length: { minimum: 6 }, confirmation: true
    validate :password_requirements

    # password protection
    has_secure_password

    def password_requirements
        rules = {
            "must contain at least one uppercase letter"  => /[A-Z]+/,
            "must contain at least one digit"             => /\d+/,
            "must contain at least one special character" => /[^A-Za-z0-9]+/
        }

        rules.each do |message, regex|
            errors.add(:password, message) unless password.match(regex)
        end
    end
end
