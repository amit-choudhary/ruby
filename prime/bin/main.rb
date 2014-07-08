require_relative '../lib/fixnum.rb'

print 'Enter upper limit: '
upper = gets.chomp.to_i
print 'Enter lower limit: '
gets.chomp.to_i.primes_upto(upper)