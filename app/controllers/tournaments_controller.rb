class TournamentsController < ApplicationController

  def index
    @season = Season.find(params[:season_id])
  end
  def show
    @tournament = Tournament.find(params[:id])
  end
end
