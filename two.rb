#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'rotateLeft' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER d
#  2. INTEGER_ARRAY arr
#

def rotateLeft(d, arr)
   r = arr.rotate(d) #rotates the array by the value of d

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i #sets the value of n to the first input

d = first_multiple_input[1].to_i #sets the value of d to the second input

arr = gets.rstrip.split.map(&:to_i) #sets the value of arr to the third input

result = rotateLeft d, arr #calls the function

fptr.write result.join " "
fptr.write "\n"

fptr.close()
