class AppartementsController < ApplicationController
	def index
		@appartements = Appartement.all
	end

	
end
