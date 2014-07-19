require 'yaml'

def yaml_load filename    #read the data file
  yaml_string = File.read filename
  YAML::load yaml_string
end

def yaml_save object, filenameout  #save the results
  File.open filenameout, 'w' do |f|
    f.write(object.to_yaml)
  end
end

def sumx values  #calculate results
  sum = 0
  values.each do |x|
    sum += x
  end
  filenameout = 'Results.txt'
  puts('The sum equals ' + sum.to_f.to_s)
  puts('The mean equals ' + (sum/values.length.to_f).to_s)
  bilbo = [sum.to_f, sum/values.length.to_f]
  yaml_save bilbo, filenameout
end

filename = 'Data.txt'

read_array = yaml_load filename
sumx read_array