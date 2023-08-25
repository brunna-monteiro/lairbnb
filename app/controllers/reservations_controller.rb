class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.where(user_id: current_user.id)
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @lair = Lair.find(params[:lair_id])
    @reservation.lair = @lair
    @reservation.user = current_user
    if @reservation.save!
      redirect_to reservations_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path, status: :see_other
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
