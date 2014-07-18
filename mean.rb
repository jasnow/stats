# This program will read a data file, compute mean, variance and standard deviation, 
# and then print the results on-screen and to an output file.

data = [2, 3, 1, 6, 53, 10, 7, 33, 22, 22]

def sum values

  # ANSWER: http://stackoverflow.com/questions/1538789/how-to-sum-array-of-numbers-in-ruby
  s = values.inject(:+)

  puts 'The sum equals ' + s.to_s
  puts 'The mean equals ' + (s/values.length).to_s
  s
end

def sum_squares values1
  sum_squares = 0
  xbar = sum(values1)
  puts "The sum equals " + xbar.to_s

  values1.each do |x|
    sum_squares += (x - xbar)**2
  end

  puts('The squared sums equal ' + sum_squares.to_s)
  puts('The stdev equals ' + (Math.sqrt(sum_squares)/(values1.length-1)).to_s)
end

sum_squares data
