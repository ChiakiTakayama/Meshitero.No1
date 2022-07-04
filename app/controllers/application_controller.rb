class ApplicationController < ActionController::Base
  # 6章で以下を追加
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  # ここまで。この後はrails sでサインアップ画面で動作確認
end
