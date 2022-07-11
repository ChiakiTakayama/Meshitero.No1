class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end

  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    if @post_image.save#21章でifを追加
     redirect_to post_images_path
    else
     render :new
    end#ここまで21章で変更
  end

  def index#11章で以下を記述
     @post_images = PostImage.page(params[:page])
    # 22章で書き換えられる前は@post_images = PostImage.allと記述される
    # 複数型 = モデル名.allにする！
    # sample_app/app/controlers/lists_controller.rbでも同じように書いてある
  end

  def show #12章で以下を記述
   @post_image = PostImage.find(params[:id])
   @post_comment = PostComment.new#18章で
  end
# @listって打ってた…バカス…
  def destroy
    @post_image = PostImage.find(params[:id])
    @post_image.destroy
    redirect_to '/post_images'
  end


  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
end
