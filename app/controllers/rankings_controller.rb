

class RankingsController < ApplicationController
  def index
      
  		@rankings =Ranking.all
  end

  def show
    @ranking = Ranking.find(params[:id])
  end

  def new
    @ranking = Ranking.new
  end

  def edit
    @ranking = Ranking.find(params[:id])
  end

  def create
    @ranking = Ranking.new(ranking_params)

    if @ranking.save
      redirect_to @ranking
    else
      render 'new'
    end
  end

  def update
    @ranking = Ranking.find(params[:id])

    if @ranking.update(ranking_params)
      redirect_to @ranking
    else
      render 'edit'
    end
  end

  def destroy
    @ranking = Ranking.find(params[:id])
    @ranking.destroy

    redirect_to rankings_path
  end

  private
  def ranking_params
    params.require(:ranking).permit(:win, :lose, :tie,:team_id)
  end
end

