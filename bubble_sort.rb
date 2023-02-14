# Bubble Sort Project - T.O.P.

def bubble_sort(array)
  length = array.length - 1

  loop do
    sorted = true

    for index in 0..(length - 1)
      if array[index] > array[index + 1]
        array[index + 1], array[index] = array[index], array[index + 1]
        sorted = false
      end
    end

    break if sorted == true

  end

  return array
  
end

p bubble_sort([1, -2, 4, 0, -1, -4, 3, -3, 2])

#################################################################################################################################

# DONE - Create a method that takes an array as its perameter
# DONE - Make sure the loop stays within the length of the given array
# DONE - Loop through the array comparing each element to the one next to it
#        if the current value is larger than the one to its right
#        make the numbers swap index positions in the array
# DONE - Loop through until all the elements are organized smallest to largest
# DONE - Return the newly organized array

