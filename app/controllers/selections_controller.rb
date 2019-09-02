class SelectionsController < ApplicationController
  def index
    @selections = Selection.where(user: current_user)
  end

  def create
    @selection = Selection.new
    @selection.user = current_user
    @selection.appartement = Appartement.find(params[:appartement_id])
    @selection.client = Client.find(params[:appartement_id])
    if @selection.save
      redirect_to appartements_path
    else
      render 'pages/home'
    end
  end

  def destroy
    @selection = Selection.find(params[:id])
    @selection.destroy
    redirect_to(request.referer)
  end

  private

  def selection_params
    params.require(:selection).permit(:user_id, :appartement_id)
  end
end
