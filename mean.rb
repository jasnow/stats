# This program will read a data file, compute mean, variance and standard deviation, 
# and then print the results on-screen and to an output file.

data = [2, 3, 1, 6, 53, 10, 7, 33, 22, 22]

def sumx values
  sum = 0
  values.each do |x|
    sum += x
  end
  puts('The sum equals ' + sum.to_s)
  #puts('The mean equals ' + (sum/values.length).to_s)
end

puts
puts(sumx data)
puts

def sum_squares values1
  sum_squares = 0
  #xbar = 0
  xbar = 0 + sumx(values1).to_i
  puts "x=" + xbar.to_s
  values1.each do |x|
    sum_squares += (x - xbar)**2
  end
  puts('The squared sums equal ' + sum_squares.to_s)
  puts('The stdev equals ' + (Math.sqrt(sum_squares)/(values1.length-1)).to_s)
end

puts
sum_squares data
puts




