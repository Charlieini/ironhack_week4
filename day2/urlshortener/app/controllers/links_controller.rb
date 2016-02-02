class LinksController < ApplicationController

	def new
		@links = Link.all
	end

	def create
		if Link.linkExist(params[:original_link])
			Link.store(params[:original_link])
		end
		redirect_to("/")
	end

	def show
		@link = Link.where(shortcut: params[:shortcut]).first.original_url
		Link.addVisit(params[:shortcut])
		redirect_to(@link)
	end

end
