class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	before_action :set_sky

	def set_sky
		@sky = "sunset_sky"
		h = Time.now.hour
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
