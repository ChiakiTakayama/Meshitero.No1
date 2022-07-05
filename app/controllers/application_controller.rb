class ApplicationController < ActionController::Base
 # 6章で以下を追加
  before_action :configure_permitted_parameters, if: :devise_controller?
 # 7章で以下を追加 
   def after_sign_in_path_for(resource)
     about_path
   end
  
  def after_sign_out_path_for(resource)
    about_path
  end
  # ここまで7章で追加したけれどNameエラー
  # ↑routes.rbの記述が違っていたから。8章に記述
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  # ここまで。この後はrails sでサインアップ画面で動作確認
end
