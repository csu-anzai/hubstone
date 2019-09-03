class PdfSimulationsController < ApplicationController
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "simulation", # Excluding ".pdf" extension.
               template: "pdf_simulations/show.pdf.erb",
               layout: "pdf.html.erb",
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
