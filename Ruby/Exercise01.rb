
# a = ["Mehdi", "Eddie", "Kennedy", "Teddy", "Remedy"]
# b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 9, 10]
# c = ["Mehdi", 9]

# There is another way to create an array with bunch of string
# a = %s{Matz Guide Dojo Choi John}
# a = %w{Matz Guide Dojo Choi John}

# returns the first value or 0th index of the array
# puts a[0]
# puts a[4]

# puts a+b

# onvert to string
# x = a+b
# puts x.to_s

# first combine and then subtract
# x = (a+b)-c
# puts x.to_s


# puts b.class

# puts a.shuffle
# puts a.shuffle.join(", ")

# a.delete("Mehdi")
# puts a

# using .push
# a = [ "a", "b", "c" ]
# puts a.push("d", "e", "f")
#         # => ["a", "b", "c", "d", "e", "f"]

# using .pop
# a = [ "a", "b", "c", "d" ]
# a.pop     #=> "d"
# a.pop(2)  #=> ["b", "c"]
# puts a    #=> ["a"]

# using .length
# puts "Length of \"a\" is #{a.length}"
# puts [ 1, 2, 3, 4, 5 ].length   #=> 5

# using .join(sep=$,) → str
# Returns a string created by converting each element of the
# array to a string, separated by sep.
# puts [ "a", "b", "c" ].join        #=> "abc"
# puts [ "a", "b", "c" ].join("-")   #=> "a-b-c"

# using .reverse
# Returns a new array containing self‘s elements in reverse order.
# puts [ "a", "b", "c" ].reverse   #=> ["c", "b", "a"]
# puts [ 1 ].reverse               #=> [1]

# using .shuffle
# puts a = [ 1, 2, 3 ]           #=> [1, 2, 3]
# puts a.shuffle.to_s                 #=> [2, 3, 1]

# shuffle(random: rng) → new_ary
# If rng is given, it will be used as the random number generator.
# puts a.shuffle(random: Random.new(1))  #=> [1, 3, 2]

# Alternative way of creating an array %w{}
# puts a = %s{Matz Guide Dojo Choi John}
# puts a = %w{Matz Guide Dojo Choi John}
# puts nums = Array.[](1, 2, 3, 4,5)
# puts nums = Array[1, 2, 3, 4,5]
# Array.[](...) [or] Array[...] [or] [...]


# ▼▼▼▼ http://www.tutorialspoint.com/ruby/ruby_arrays.htm ▼▼▼▼

# names = Array.new
# names = Array.new(20)
# puts names.size  #=> This returns 20
# puts names.length #=> This also returns 20

# names = Array.new(4, "mac")
# puts "#{names}" #=> ["mac", "mac", "mac", "mac"]

# nums = Array.new(10) { |e| e = e * 2 }
# puts "#{nums}" #=> [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]

# digits = Array(0..9)
# puts "#{digits}" #=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# # .at
# digits = Array(0..9)
# num = digits.at(6)
# puts "Array:\n\t#{digits}"  #=>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# puts "The value of index 6 is: #{num}" #=> The value of index 6 is: 6

# # .sort
# a = [ "d", "a", "e", "c", "b" ]
# puts a.sort                    #=> ["a", "b", "c", "d", "e"]
# a.sort { |x,y| y <=> x }  #=> ["e", "d", "c", "b", "a"]

# # .slice
# a = [ "a", "b", "c" ]
# puts a.slice(1)     #=> "b"
# puts a.slice(-1)    #=> "c"
# a.slice(100)   #=> nil

# # .insert
# a = %w{ a b c d }
# puts a.insert(2, 99)         #=> ["a", "b", 99, "c", "d"]
# puts a.insert(-2, 1, 2, 3)   #=> ["a", "b", 99, "c", 1, 2, 3, "d"]

# # .fetch
# h = { "a" => 100, "b" => 200 }
# puts h.fetch("a")                            #=> 100
# puts h.fetch("z", "go fish")                 #=> "go fish"
# puts h.fetch("z") { |el| "go fish, #{el}"}   #=> "go fish, z"

# .at
# puts Time.at(628232400)
# t = Time.new(1989, 11, 28, 0, 0, 0, "-05:00") # Working with an instance of Time
# puts t.to_i

# Using values_at() -> returns an array with values specified in the param
    # e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"
# a = %w{ a b c d e f }
# puts a.values_at(1, 3, 5)          # => ["b", "d", "f"]
# puts a.values_at(1, 3, 5, 7)       # => ["b", "d", "f", nil]
# puts a.values_at(-1, -2, -2, -7)   # => ["f", "e", "e", nil]
# puts a.values_at(4..6, 3...6)      # => ["e", "f", nil, "d", "e", "f"]
# a = %w{cat dog bear}
# puts a.values_at(0,2).join(' and ') #=> "cat and bear"
