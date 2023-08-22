class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @lair = Lair.find(params[:lair_id])
    @reservation.lair = @lair
    @reservation.user = current_user
    if @reservation.save!
      redirect_to lair_path(@lair)
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
