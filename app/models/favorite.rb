class Favorite < ApplicationRecord
  # 19勝で初めて
  belongs_to :user
  belongs_to :post_image
  
end
