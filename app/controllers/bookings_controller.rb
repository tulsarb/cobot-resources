class BookingsController < ApplicationController
  def create
    booking = Booking.new(create_params)

    booking.valid?

    binding.pry
  end

  private

  def create_params
    params.require(:booking).permit(:date, :time, :duration_hours, :duration_minutes, :resource)
  end
end
