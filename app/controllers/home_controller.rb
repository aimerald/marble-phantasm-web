class HomeController < ApplicationController
  def index
		logger.debug @current_user
  end
end
