# x = {"first_name" => "Coding", "last_name" => "Dojo"}

# puts x["first_name"] , x["last_name"]
# puts "Your last name is Dojo" if x["last_name"].eql? "Dojo"
#
# y = {:first_name => "Coding", :last_name => "Dojo"}
# puts "Y is ", y
# puts y[:first_name], y[:last_name]
#
# puts "DELETING :first_name"
# y.delete :first_name
# puts "Y is now", y
#
# if y.has_key? :first_name
# 	puts "Y has a key called :first_name"
# else
# 	puts "Y does not have a key called :first_name"
# end
#
# if y.has_value? "Dojo"
# 	puts "Y has a value called Dojo"
# else
# 	puts "Y does not have a value called Dojo"
# end

-------

# delete(key) => deletes and returns a value associated with the key
h = {:first_name => "Coding", :last_name => "Dojo"}
h.delete(:last_name)
print h      #=> [:first_name, "Coding"]

h = { "a" => 100, "b" => 200 }
puts h.delete("a")                              #=> 100
puts h.delete("z")                              #=> nil
puts h.delete("z") { |el| "#{el} not found" }   #=> "z not found"

# .empty? => returns true if hash contains no key-value pairs
puts y = {}.empty?   #=> true

# .has_key?(key) => true or false
h = { "a" => 100, "b" => 200 }
puts h.has_key?("a")   #=> true
puts h.has_key?("z")   #=> false

# .has_value?(value) => true or false
h = { "a" => 100, "b" => 200 }
puts h.has_value?(100)   #=> true
puts h.has_value?(999)   #=> false
