class PostComment < ApplicationRecord#18章で初記入
  belongs_to :user
  belongs_to :post_image
end
