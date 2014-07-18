require 'time'
require_relative '../lib/invalid_time_error'

class Time
  REGEX = /^([0-1]?\d?|[2]?[0-3]?)[:][0-5]?\d?[:][0-5]?\d?$/

  def self.valid?(str)
    REGEX =~ str
  end

  def self.sum(time)
    time.inject do |sum, element|
      sum + element.sec + element.min * 60 + element.hour * 3600
    end
  end

  def self.show_total_time(*time)
    if time.all? { |time| valid?(time) }
      time = time.map { |time| Time.parse(time)}
      total_time = sum(time)
      total_string = "#{ total_time.hour }:" + "#{ total_time.min }:" + "#{ total_time.sec }"
      days = total_time.day - time[0].day
      (days > 0 ? "#{ days } day & " : "") + total_string
    else
      raise InvalidTimeError
    end
  end

end
