class Like < ApplicationRecord
  belongs_to :browser
  belongs_to :pro
  belongs_to :recommendation
  belongs_to :prosp
end
