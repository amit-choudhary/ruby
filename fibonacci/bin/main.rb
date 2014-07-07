require_relative '../lib/fibonacci.rb'

fibonacci = Fibonacci.new
fibonacci.series_upto( 1000 ) { |number| print number, " " }
