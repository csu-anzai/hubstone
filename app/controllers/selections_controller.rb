class SelectionsController < ApplicationController
  def index
    @selections = Selection.where(user: current_user)
    respond_to do |format|
        format.html { render 'selections/index' }
        format.js
      end
  end

  def create
    @selection = Selection.new
    @selection.user = current_user
    @selection.appartement = Appartement.find(params[:appartement_id])
    if @selection.save
      respond_to do |format|
        format.html { redirect_to appartements_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'pages/home' }
        format.js
      end
    end
  end

  # def create
  #   @selection = Selection.new
  #   @selection.user = current_user
  #   @selection.appartement = Appartement.find(params[:appartement_id])
  #   if @selection.save
  #       redirect_to appartements_path
  #   else
  #     render 'pages/home'
  #   end
  # end

  def destroy
    @selection = Selection.find(params[:id])
    if @selection.destroy
      respond_to do |format|
        format.html { redirect_to(request.referer) }
        format.js
      end
    end
  end

  def update
    @selection = Selection.find(params[:id])
    if @selection.comparaison
      @selection.comparaison = false
    else
      @selection.comparaison = true
    end
    @selection.save
    redirect_to(request.referer)
  end

  def comparaison
    @selections = Selection.where(user: current_user, comparaison: true)
  end

  private

  def selection_params
    params.require(:selection).permit(:user_id, :appartement_id, :comparaison)
  end
end
