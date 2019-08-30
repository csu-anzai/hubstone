class AppartementsController < ApplicationController
  def index
    # raise



    geocoded_appartements = Appartement.geocoded
    if params[:location].present? && params[:actabilite].present? && params[:livraison].present? && params[:piece].present?
      @appartements = geocoded_appartements.where("ville = ? AND actabilite = ? AND livraison = ?", params[:location], params[:actabilite], params[:livraison].gsub("-"," "))
      @appartements = typologie_fiter(params[:piece], @appartements)
    elsif params[:actabilite].present? && params[:livraison].present? && params[:piece].present?
      @appartements = geocoded_appartements.where("actabilite = ? AND livraison = ?", params[:location], params[:actabilite], params[:livraison].gsub("-"," "))
      @appartements = typologie_fiter(params[:piece], @appartements)
    elsif params[:piece].present?
      @appartements = typologie_fiter(params[:piece], geocoded_appartements)
    else
      @appartements = geocoded_appartements.all
    end
    # @appartements = policy_scope(Appartement).order(created_at: :desc)
    # @appartements = Appartement.all
    #Create the Array of all 'appartements' with coordinates
    #Iterate on appartements to generate market for each one
    @markers = @appartements.map do |appartement|
      {
        lat: appartement.latitude,
        lng: appartement.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { appartement: appartement }),
        id: appartement.id
      }
    end
  end

  def show

  end

  private

  def typologie_fiter(params, prefiltered_appart)
    case params.size
    when 1
      @appartements = prefiltered_appart.where("typologie = ?", params.first)
    when 2
      @appartements = prefiltered_appart.where("typologie = ? OR typologie = ?", params[0], params[1])
    when 3
      @appartements = prefiltered_appart.where("typologie = ? OR typologie = ? OR typologie = ?", params[0], params[1], params[2])
    when 4
      @appartements = prefiltered_appart.where("typologie = ? OR typologie = ? OR typologie = ? OR typologie = ?", params[0], params[1], params[2], params[3])
    end
  end
end
