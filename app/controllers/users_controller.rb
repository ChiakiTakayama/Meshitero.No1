class UsersController < ApplicationController
  # このページ全て15章で追加
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images    
  end
  # ArgumentErrorが出る。
  # user.rbのdef get_profile_imageの後ろに(width,height)を設定しなければならない
  
  def edit
  end
  
  def user_params
    params.require(:user).permit(:user_name, :image, )
  end
end
