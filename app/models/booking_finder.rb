class BookingFinder
  def initialize(options)
    @date = options.fetch(:date)
  end

  def current_bookings
    Cobot.new.get_bookings(@date, @date.end_of_day)
  end
end