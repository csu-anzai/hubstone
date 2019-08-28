class SelectionsController < ApplicationController

  def index
    @selections = Selection.where(user: current_user)
  end
end
