require 'byebug'
require 'minitest/pride'

class Clock
  attr_accessor :hour, :minutes, :time
  def initialize(time = {})
    total_seconds = time[:hour].to_i * 60 * 60 + time[:minute].to_i * 60
    @minutes, s = time[:minute] ? total_seconds.divmod(60) : [0, 0]
    @hour, @minutes = time[:hour] || time[:minute] ? @minutes.divmod(60) : [0, 0]
    @hour = @hour.zero? ? time[:hour].to_i.modulo(24) :  @hour.modulo(24)
    format_hour_min
  end

  def +(clock)
    @minutes = self.minutes.to_i + clock.minutes.to_i
    @minutes = format('%02d', @minutes)
    "#{@hour}:#{@minutes}"
  end

  def format_hour_min
    @hour = format('%02d', @hour)
    @minutes = format('%02d', @minutes)
  end

  def to_s
    "#{@hour}:#{@minutes}"
  end
end
