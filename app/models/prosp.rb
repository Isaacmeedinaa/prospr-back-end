class Prosp < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :prosp_images, dependent: :destroy
  has_many :prosp_comments, dependent: :destroy
  belongs_to :pro
  belongs_to :browser, optional: true
end
