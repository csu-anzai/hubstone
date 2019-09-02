class UsersController < ApplicationController

  def dashboard
    @clients = Client.where(user_id: current_user)
  end
end
