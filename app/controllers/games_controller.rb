class GamesController < ApplicationController
  def show
    render json: Game.first, status: :ok
  end
end