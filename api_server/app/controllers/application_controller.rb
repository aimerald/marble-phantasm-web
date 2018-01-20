
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_sky
  before_action :set_blur
  before_action :set_title
  before_action :get_current_user
  before_action :set_astro
  before_action :set_title

  def set_title
    @title = 'marble-phantasm'
  end

  # もしログインしていなければトップページにリダイレクト
  def user_sign_in_status
    redirect_to :root, notice: 'ログインしている必要な項目があります。' unless user_signed_in?
  end

  def get_current_user
    user_id = cookies[:current_user]
    logger.debug "・ω・#{user_id}"
    begin
      @current_user = User.find(user_id)
    rescue StandardError => e
      puts e
      logger.debug '[1199]::おかしなクッキーを使っているユーザーが居る'
    end
  end

  # ログイン中かどうかを確認する
  def user_signed_in?
    @current_user.nil? ? false : true
  end

  def set_blur
    @blur = ''
    @blur_on_windmill = 'blur'
  end

  def set_title
    @title = "Season'sCall:::ハッカーを目指す青年のポートフォリオ"
  end

  def set_sky
    @sky = 'night_sky'
    h = Time.now.hour + 9
    logger.debug h
    case h
    when 6..16
      @sky = 'morning_sky'
    when 17..19
      @sky = 'sunset_sky'
    when 20..5
      logger.debug 'Hello?'
      @sky = 'night_sky'
    end
  end

  def set_astro
    h = Time.now.hour + 9
    @astro = if h > 0 && h < 19
               'sun'
             else
               'moon'
             end
  end
end
