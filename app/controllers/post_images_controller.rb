class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end

  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end

  def index#11章で以下を記述
     @post_images = PostImage.all
    # 複数型 = モデル名.allにする！
    # sample_app/app/controlers/lists_controller.rbでも同じように書いてある
  end

  def show #12章で以下を記述したらエラー
    @post_image = PostImage.find(params[:id])
  end
# @listって打ってた…バカス…

  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
end
