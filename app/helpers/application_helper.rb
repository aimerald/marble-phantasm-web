module ApplicationHelper

	def user_signed_in?
		if @current_user.nil?
			return false
		else
			return true
		end
	end
end
