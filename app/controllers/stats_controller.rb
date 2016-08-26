
class StatsController < ApplicationController
  def index
    @stats = Stat.all
  end



  def new
    @stat = Stat.new
  end

  def edit
    @stat = Stat.find(params[:id])
  end

  def create
    @stat = Stat.new(stat_params)

    if @stat.save
      redirect_to @stat
    else
      render 'new'
    end
  end

  def update
    @stat = Stat.find(params[:id])

    if @stat.update(stat_params)
      redirect_to @stat
    else
      render 'edit'
    end
  end

  def destroy
    @stat = Stat.find(params[:id])
    @stat.destroy

    redirect_to stats_path
  end

  private
  def stat_params
    params.require(:stat).permit(:num_throw, :num_catches, :points,:distance_ran,:user_id)
  end
end
