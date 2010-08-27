class PagesController < ApplicationController

	def about
	end

	def blog
	end

	def documentation
		redirect_to :controller => "documentation", :action => "index"
	end

	def index
	end

end
