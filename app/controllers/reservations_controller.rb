class ReservationsController < ApplicationController
  def new
    @Reservation = Reservation.new
  end

  def create
    raise
  end
end
