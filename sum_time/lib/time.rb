require 'time'
require_relative '../lib/invalid_time_error'

class Time
  REGEX = /^([0-1]?\d?|[2]?[0-3]?)[:][0-5]?\d?[:][0-5]?\d?$/
  @@total_string = ''
  @@total_time = Time.parse('00:00:00')
  @@day = 0

  def self.valid?(str)
    REGEX =~ str
  end

  def self.sum(first_time, second_time)
    time1, time2 = Time.parse(first_time), Time.parse(second_time)
    @@total_time = time1 + time2.sec + time2.min * 60 + time2.hour * 3600
    @@day = @@total_time.day - time1.day
  end

  def self.show_total_time(first_time = '00:00:00', second_time = '00:00:00')
    if valid?(first_time) && valid?(second_time)
      sum(first_time, second_time)
      @@total_string = "#{ @@total_time.hour }:" + "#{ @@total_time.min }:" + "#{ @@total_time.sec }"
      (@@day > 0 ? "1 day & " : "") + @@total_string
    else
      raise InvalidTimeError
    end
  end

end