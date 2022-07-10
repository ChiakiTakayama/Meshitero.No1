class PostImage < ApplicationRecord
  
  belongs_to :user
  has_one_attached :image
  has_many :post_comments, dependent: :destroy#18章
  has_many :favorites, dependent: :destroy #19章で追加
  
  # 21章でバリデーションを記述
  validates :shop_name, presence: true
  validates :image, presence: true
  
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end
  
  def favorited_by?(user)#19章で追加
    favorites.exists?(user_id: user.id)
  end
end
