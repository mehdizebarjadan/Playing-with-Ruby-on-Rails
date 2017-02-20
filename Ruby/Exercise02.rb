# any? {|obj| block} -> true or false
# puts ["ant", "bear", "cat"].any? {|word| word.length >= 3} #==>true
# puts %w[ant bear cat].any? { |word| word.length >= 3 } #=> true
# puts %w[ant bear cat].any? { |word| word.length >= 4 } #=> true
# puts [nil, true, 99].any?                              #=> true
#
# .each -> calls block once for each element in self, passing that element as a parameter.
# ["ant", "bear", "cat"].each {|word| print word, "--"}  #==>ant--bear--cat--
#
# .collect {|obj| block} -> array; returns a new array with the results of running block once for every element in enum
# puts (1..4).collect {|i| i*i}
# puts (1..4).collect { "cat" }
#
# map {|obj| block} -> enumerator; returns a new array with the results of running block once for every element in enum. it's exactly like .collect
# puts (1..4).map {|i| i*i}
# puts (1..4).map { "cat" }
#
# detect/.find -> enumerator; returns the first for which block is not false.
# puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } #=> nil
# puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } #=> 35
# puts (1..10).find { |i| i %5 == 0 and i % 7 == 0 } #=> nil
# puts (1..100).find { |i| i %5 == 0 and i % 7 == 0 } #=> 35
#
# .find_all {|obj| block} or .select {|obj| block} ; returns an array containing all elements of enum for which block is not false
# puts (1..10).find_all { |i| i % 3 == 0 }
# puts (1..10).select{ |i| i % 3 == 0 }
#
# .reject {|obj| block} -> opposite of find_all
# puts (1..10).reject { |i| i % 3 == 0 }
#
# .upto(limit) -> iterates block up to the int number
# puts 5.upto(10) { |i| print i, " " }
#
# .has_key?(key) -> true or false
# h = { "a" => 100, "b" => 200 }
# puts h.has_key?("a")   #=> true
# puts h.has_key?("z")   #=> false
#
# .has_value?(value) -> true or false
# h = { "a" => 100, "b" => 200 }
# puts h.has_value?(100)   #=> true
# puts h.has_value?(999)   #=> false
#
# .key(value) -> returns the key of an occurrence of a given value. If the value is not found, returns nil
# h = { "a" => 100, "b" => 200, "c" => 300, "d" => 300 }
# puts h.key(200)   #=> "b"
# puts h.key(300)   #=> "c"
# puts h.key(999)   #=> nil
#
# .keys -> returns a new array populated with the keys from the hash
# h = { "a" => 100, "b" => 200, "c" => 300, "d" => 400 }
# puts h.keys   #=> ["a", "b", "c", "d"]
