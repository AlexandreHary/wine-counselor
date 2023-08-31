class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @wine=Wine.last #transformer.last en params etc
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:chatroom_id, :wine_id)
  end
end
