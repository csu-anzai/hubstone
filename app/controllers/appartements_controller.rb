class AppartementsController < ApplicationController
	def index
    # @appartements = policy_scope(Appartement).order(created_at: :desc)
		# @appartements = Appartement.all
    #Create the Array of all 'appartements' with coordinates
    @appartements = Appartement.geocoded
    #Iterate on appartements to generate market for each one
    @markers = @appartements.map do |appartement|
      {
        lat: appartement.latitude,
        lng: appartement.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { appartement: appartement })
      }
    end
  end
end
