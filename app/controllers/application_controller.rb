class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  #デバイスが使用される前にconfigure_permitted_parametersが実行される

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    #nameのデーター操作を許可上記ではユーザー登録の際にnameの操作が許可される
  end
end
