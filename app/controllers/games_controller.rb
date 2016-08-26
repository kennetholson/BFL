class GamesController < ApplicationController

  def index
  	@games = Game.all
  end

  def new
  	@game = Game.new
  end

  def show
  	@game = Game.find(params[:id])
  end	
end
