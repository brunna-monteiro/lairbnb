class LairsController < ApplicationController
  def index
    @lairs = Lair.all
  end

  def show
    @lair = Lair.find(params[:id])
    @reservation = Reservation.new
  end
end
