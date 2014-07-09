class Time

  REGEX = /^([0-1]\d|[2][0-3])[:][0-5]\d[:][0-5]\d$/

  def self.valid?(str)
    REGEX =~ str
  end

  def self.string_to_time(time_string)
    DateTime.parse(time_string + 'IST').to_time
  end

  def self.sum(first_time = '00:00:00', second_time = '00:00:00')
    if valid?(first_time) && valid?(second_time)
      time1, time2 = string_to_time(first_time), string_to_time(second_time)
      total_time = time1 + time2.sec + time2.min * 60 + time2.hour * 3600
      total_string = "#{ final_time.hour }:" + "#{ final_time.min }:" + "#{ final_time.sec }"
      ((time1.hour + time2.hour) > 23 ? "1 day & " : "") + total_string
    else
      'Invalid'
    end
  end

end