class Booking
  include ActiveModel::Model

  attr_accessor :date, :time, :duration_hours, :duration_minutes, :resource

  validates :date, :duration_hours, :duration_minutes, presence: true
end