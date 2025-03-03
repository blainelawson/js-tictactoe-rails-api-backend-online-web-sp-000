class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @games = Game.all
    render json: @games
  end

  def create
    # binding.pry
    @game = Game.create(state: params[:state])
    
    render json: @game, status: 201
  end

  def show
    @game = Game.find_by(id: params[:id])
    render json: @game, status: 201
  end

  def update
    @game = Game.find_by(id: params[:id])
    @game.update(state: params[:state])
    render json: @game, status: 201
  end
    
end
