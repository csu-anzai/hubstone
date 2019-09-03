class PdfSimulationsController < ApplicationController
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "simulation", # Excluding ".pdf" extension.
               template: "pdf_simulations/show.pdf.erb",
               layout: "pdf.html.erb"
      end
    end
  end
end
