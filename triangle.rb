# Create an application that will take a number in Terminal and
# output the same number of lines with the same number of digits 
# in each line. Note: elements continue to grow in order.
# $ ruby triangle.rb 4
# 
# OUTUT:
# 1
# 2 3
# 4 5 6
# 7 8 9 10

rows = ARGV[0].to_i

first_row_number = 1
last_row_number = 0
(1..rows).collect do |current_row_number|
  # create a row with the amount of numbers incremented by one and saved into an array. 
  # puts "INFO: :current_row_number => #{current_row_number}, :last_row_number => #{last_row_number} , :first_row_number => #{first_row_number}"
  # puts "RANGE: #{(first_row_number..current_row_number)}"
  highest_number_in_row_range = last_row_number + current_row_number
  built_row = (first_row_number..highest_number_in_row_range).collect {|x| x}
  # puts "BUILT ROW: #{built_row}"
  last_row_number = built_row.last
  first_row_number += current_row_number
  puts built_row.join(" ")
end
