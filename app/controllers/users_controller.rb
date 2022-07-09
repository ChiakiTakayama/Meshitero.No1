class UsersController < ApplicationController
  # このページ全て15章で追加
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images
  end
  # ArgumentErrorが出る。
  # user.rbのdef get_profile_imageの後ろに(width,height)を設定しなければならない

  def edit
    @user = User.find(params[:id])
    # 16章で追加
  end
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
# 16章で追加。redirect_toは引数内に@モデル名

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

  # def user_params
    # params.require(:user).permit(:user_name, :image, )
  # end
end
