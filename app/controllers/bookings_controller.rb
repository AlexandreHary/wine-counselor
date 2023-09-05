class BookingsController < ApplicationController
  def index
    @chatroom = Chatroom.find(params[:chatroom_id])
    @bookings = Booking.where(chatroom: @chatroom)
    # @offers = Offer.where(wine: booking.wine)
    # @offers.each do |offer|
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
