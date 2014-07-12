require 'time'

class Sum

  REGEX = /^([0-1]?\d?|[2]?[0-3]?)[:][0-5]?\d?[:][0-5]?\d?$/

  def valid?(str)
    REGEX =~ str
  end

  def sum(first_time = '00:00:00', second_time = '00:00:00')
    if valid?(first_time) && valid?(second_time)
      time1, time2 = Time.parse(first_time), Time.parse(second_time)
      total_time = time1 + time2.sec + time2.min * 60 + time2.hour * 3600
      total_string = "#{ total_time.hour }:" + "#{ total_time.min }:" + "#{ total_time.sec }"
      ((time1.hour + time2.hour) > 23 ? "1 day & " : "") + total_string
    else
      'Invalid time.'
    end
  end

end