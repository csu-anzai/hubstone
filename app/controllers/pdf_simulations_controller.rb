class PdfSimulationsController < ApplicationController
  def show
    @simulation = Simulation.find(params[:simulation_id])
    @client = @simulation.client
    @appartement = @simulation.appartement
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "simulation", # Excluding ".pdf" extension.
               template: "pdf_simulations/show.pdf.erb",
               layout: "pdf.html.erb",
               page_size: "A4",
               dpi: 300,
               disposition: "inline",
               margin: {
                 top: 20, # default 10 (mm)
                 bottom: 20,
                 left: 20,
                 right: 20
               }
      end
    end
  end
end
