require_relative '../lib/time'
require 'date'

begin
  print Time.show_total_time('11:23:07', '0:23:23', '22:53:45', '23:45:56')
rescue InvalidTimeError
  puts 'Invalid Time.'
end
