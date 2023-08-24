class LairsController < ApplicationController
  def index
    search = params[:query]
    if search.present?
      @lairs = Lair.search_by_name(search)
    else
      @lairs = Lair.all
    end
  end

  def show
    @lair = Lair.find(params[:id])
    @reservation = Reservation.new
  end
end
