# Caesar Cipher Project - T.O.P.

def caesar_cipher(string, shift_factor)
  string_array = string.split("")
  ascii_array = string_array.map {|array_element| array_element.ord}

  until shift_factor < 26
    shift_factor = shift_factor - 26
  end
  
  until shift_factor > -26
    shift_factor = shift_factor + 26
  end

  ascii_number_shifted = ascii_array.map do |ascii_num|
    if ascii_num.between?(65, 90)
      if shift_factor.positive?
        ascii_num + shift_factor > 90 ? (ascii_num + shift_factor) - 26 : ascii_num + shift_factor
      else
        ascii_num + shift_factor < 65 ? (ascii_num + shift_factor) + 26 : ascii_num + shift_factor
      end
    elsif ascii_num.between?(97, 122)
      if shift_factor.positive?
        ascii_num + shift_factor > 122 ? (ascii_num + shift_factor) - 26 : ascii_num + shift_factor
      else
        ascii_num + shift_factor < 97 ? (ascii_num + shift_factor) + 26 : ascii_num + shift_factor
      end
    else
      ascii_num
    end
  end

  string_array_shifted = ascii_number_shifted.map {|ascii| ascii.chr}.join("")
  string_array_shifted
end

puts caesar_cipher("Lets Hope This Works!", 898)

#################################################################################################################################

# DONE - Create a method that takes a string and the shift_factor as its perameters
# DONE - Take the given string, make it into an array where each element is a character from the string
# DONE - Take that array, iterate through it converting each element into it's corrisponding ascii number
# DONE - Iterate through that new array, check if each element is within the ranges of 65 - 90 and 97 - 122
# DONE - Check to see if the shift_factor will knock the number out of range
# DONE - Fix it, add or subtract 26 to get the number back in range, this will act as a loop for the ranges
# DONE - Create a new array with the new shifted ascii numbers
# DONE - Convert numbers back to letters, join them together
# DONE - Return the new string with punctuation and case intact
