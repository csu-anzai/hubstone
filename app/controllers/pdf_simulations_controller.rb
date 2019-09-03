class PdfSimulationsController < ApplicationController
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "simulation" # Excluding ".pdf" extension.
      end
    end
  end
end
