class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception  
  before_action :set_sky
	before_action :set_blur
	before_action :set_title

	def set_blur
		@blur = ""
	end

	def set_title
		@title = "Season'sCall:::ハッカーを目指す青年のポートフォリオ"
	end

  def set_sky
    @sky = "night_sky"
    h = Time.now.hour + 9
    logger.debug h
    case h
      when 6..16
        @sky = "morning_sky"
      when 17 .. 19
        @sky = "sunset_sky"
      when 20 .. 5
        logger.debug "Hello?"
        @sky = "night_sky"
    end
  end

end
