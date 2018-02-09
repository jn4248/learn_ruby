class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    current_seconds = @seconds
    seconds = current_seconds % 60
    minutes = ((current_seconds - seconds) % 3600 ) / 60
    hours = ((current_seconds - (minutes * 60) - seconds) % 216000) / 3600
    time = sprintf("%2.2d:%2.2d:%2.2d", hours, minutes, seconds)
    time
  end
end
