#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'hourglassSum' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#
# comment on the below code 

def hourglassSum(arr) #defining the function
    max = -63  #setting the max value to -63
    for i in 0..3 #for loop to iterate through the array
        for j in 0..3 #for loop to iterate through the array
            sum = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2] #summing the values of the hourglass
            max = sum if sum > max #if the sum is greater than the max value, set the max value to the sum
        end
    end
    return max #returns the max value

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr = Array.new(6) #creates a new array with a size of 6

6.times do |i| # iterates through the array
    arr[i] = gets.rstrip.split.map(&:to_i) #splits the input and converts it to an integer
end

result = hourglassSum arr #calls the function

fptr.write result
fptr.write "\n"

fptr.close()
