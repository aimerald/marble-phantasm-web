module ApplicationHelper

	def user_signed_in?
		if @current_user.nil?
			return false
		else
			return true
		end
	end

  #RedCarpet
  def markdown(text)
    unless @markdown
      renderer = Redcarpet::Render::HTML.new
      @markdown = Redcarpet::Markdown.new(renderer)
    end
    @markdown.render(text).html_safe
  end
  
end
