class HomeController < ApplicationController
  def index
    @booking = Booking.new
    @resources = Resource.all
  end
end
