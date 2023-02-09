# Substrings Project - T.O.P.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  string_downcase = string.downcase
  created_hash = string_downcase.split(" ").reduce(Hash.new(0)) do |hash, string_word|
    dictionary.each {|dictionary_word| hash[dictionary_word] += 1 if string_word.include?(dictionary_word) }
    hash
  end
  return created_hash
end



puts substrings("Howdy partner, sit down! How's it going?", dictionary)

#################################################################################################################################

# take string, see if its in dictionary, return hash with k-v pairs of the substring and the num of times it shows up

# DONE - Create a method that takes two perameters (string, dictionary)
# DONE - Make the string into an array
# DONE - Make an empty hash that can be added to
# DONE - Iterate through the dictionary array
# DONE - Find and count how many times each substring or string shows up in the dictionary array
# DONE - Return a hash with this information
# DONE - Make sure the method can take multiple words. Not Case Sensitive.

# Example : substrings("below", dictionary) #=> { "below" => 1, "low" => 1 } 

#################################################################################################################################

# created_hash = string_downcase.split(" ").reduce(Hash.new(0)) do |hash, string_word|

# take the string and split it into an array, where each element is a single word
# .reduce(Hash.new(0)) do |hash, string_word|
  # creates a single new hash with 0 as the key so it can be added too as the count goes up
  # |hash| represents where the new key/value pairs will be stored
  # |string_word| represents what is being iterated over with the next step

# dictionary.each {|dictionary_word| hash[dictionary_word] += 1 if string_word.include?(dictionary_word) }

# iterate through the dictionary array
# if string_word includes dictionary_word add 1 to the hash
  # |hash| represents where the new key/value pairs are being stored
  # [dictionary_word] is the key
  # += 1 is the value
    # These are the key / value pairs being assigned to the hash
