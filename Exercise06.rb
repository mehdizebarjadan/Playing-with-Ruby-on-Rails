

# Solve all 13 problems below in as much of Ruby way as possible.
# *Bonus if they are all one line each*


#▼
#-----------------------------------------------------------------
#1
=begin
	Print 1-255
	Write a program (sets of instructions) that would print all
	the numbers from 1 to 255.
=end

# 					▼▼▼▼ [#1] Answer 1 - Using "For" loop ▼▼▼▼

# a = 1
# b = 15
# for i in a..b
# 	# puts "#{i}"
# 	# print "#{i}" + ",\t"
#
# 	puts "Numbers between #{a} and #{b}" if i==a
# 	print "#{i}\n"
# 	puts "This is the end.\n\n" if i==b
# end

# 					▼▼▼▼ [#1] Answer 2  - Using "While" loop ▼▼▼▼

# $i = a = 1
# $num = b = 15
# begin
# 	puts "Printing numbers between #{$i} and #{$num}" if $i==a
# 	puts "#{$i}"
# 	$i +=1
# 	puts "This is the end." if $i==b+1
# end while $i <= $num

# 					▼▼▼▼ [#1] Answer 3 - Using an Array Populated with a Range ▼▼▼▼

# a = 1
# b = 15
# (a..b).each {|n| print n, ' ' }
#
# a = (0..15).to_a
# a.values_at(* a.each_index.select {|n| print n , ' ' unless n == 0} ).to_s

# 					▼▼▼▼ [#1] Answer 4  ▼▼▼▼

# 1.upto(255) { |i| puts i  }

# 					▼▼▼▼ [#1] Answer 5  ▼▼▼▼

# class Arr
# 	def initialize(min, max)
# 		# Instance variables
# 		@min = min
# 		@max = max
# 	end
#
# 	def all
# 		(@min..@max).each {|n| puts n  }
# 	end
# end
# test = Arr.new(1,255)
# test.all

# 					▼▼▼▼ [#1] Answer 6  ▼▼▼▼

# 256.times do |i|
#   next if i == 0
#   puts i
# end

# 					▼▼▼▼ [#1] Answer 7  ▼▼▼▼

# (1..255).step(1) { |i| puts i}

# 					▼▼▼▼ [#1] Answer 8  ▼▼▼▼

# puts Array.new(255) { |i| i+1 }

# 					▼▼▼▼ [#1] Answer 9  ▼▼▼▼

# a self referential recursive lambda :-)
# lambda { me = lambda { |x| puts x; me.call(x+1) if x < 5 } ; me.call(1) }.call

# 					▼▼▼▼ [#1] Answer 10 ▼▼▼▼

# same thing, but passing the lambda around
# rec = lambda { |v,l| puts v; l.call(v+1,l) if v < 255 }
# rec.call(1,rec)

#-----------------------------------------------------------------
#2
=begin
	Print odd numbers between 1-255
	Write a program (sets of instructions) that would print all
	the odd numbers from 1 to 255.
=end

# 					▼▼▼▼ [#2] Answer 1 - Populate an Array with a Range ▼▼▼▼

# a = 1
# b = 15
# a = ('1'..'255').to_a
# puts a.values_at(* a.each_index.select {|i| i.even?}).to_s
# puts a.values_at(* a.each_index.select {|i| i.odd?}).to_s

# 					▼▼▼▼ [#2] Answer 2 - Using class ▼▼▼▼

# class Array
# 	def initialize(min, max)
# 		# Instance variables
# 		@min = min
# 		@max = max
# 	end
#
# 	def all
# 		(@min..@max).each {|n| puts n  }
# 	end
#
# 	def odd_values
# 		for i in @min..@max
# 			puts i if i%2 !=0
# 		end
# 		#!!! self.values_at(* self.each_index.select {|i| i.odd?})
# 	end
#
# 	def even_values
# 		for i in @min..@max
# 			puts i if i%2 ==0
# 		end
# 		#!!! self.values_at(* self.each_index.select {|i| i.even?})
# 	end
# end
#
# test = Array.new(1,255)
# test.odd_values
# test.even_values
# test.all

# 					▼▼▼▼ [#2] Answer 3 ▼▼▼▼

# 256.times do |i|
#   next if i % 2 == 0
#   puts i
# end

# 					▼▼▼▼ [#2] Answer 4 ▼▼▼▼

# 128.times { |i| puts i*2+1 }

# 					▼▼▼▼ [#2] Answer 5 ▼▼▼▼

# (1..255).step(2) { |i| puts i}

# 					▼▼▼▼ [#2] Answer 6 ▼▼▼▼

# 1.upto(255) { |i| puts i  unless i[0].zero? }

# 					▼▼▼▼ [#2] Answer 7 ▼▼▼▼

# puts Array.new(128) { |i| i * 2 + 1 }

# 					▼▼▼▼ [#2] Answer 8 ▼▼▼▼

# a self referential recursive lambda :-)
# lambda { me = lambda { |x| puts x; me.call(x+2) if x < 255 } ; me.call(1) }.call

# 					▼▼▼▼ [#2] Answer 9 ▼▼▼▼

# same thing, but passing the lambda around
# rec = lambda { |v,l| puts v; l.call(v+2,l) if v < 255 }
# rec.call(-1,rec)

# 					▼▼▼▼ [#2] Answer 10 ▼▼▼▼

# same recursive algorithm, but in method form
# def odds(x=1)
#   puts x
#   odds(x+2) if x < 255
# end
#
# odds

# 					▼▼▼▼ [#2] Answer 11 ▼▼▼▼

# class Integer
#   def odd?
#     self[0].nonzero?
#   end
# end
#
# 256.times { |i| puts i if i.odd? }

# 					▼▼▼▼ [#2] Answer 12 ▼▼▼▼

# require 'delegate'
# class OddNum < DelegateClass(Fixnum)
#   def initialize(value)
#     value |= 1  # force it odd
#     super(value)
#   end
#   def succ
#     # note that the delegated succ gets called when we call super
#     # and the constructor forces it (up) to the next odd number
#     OddNum.new(super)
#     # or
#     # OddNum.new(self + 1)  # still using the constructor's force to odd
#     # or
#     # OddNum.new(self + 2)  # being odd all on our own
#   end
# end
#
# (OddNum.new(1)..255).each { |i| puts i }


#-----------------------------------------------------------------
#3
=begin
	Print Sum
	Write a program that would print the numbers from 0 to 255 but
	this time, it would also print the sum of the numbers that have
	been printed so far. For example, your output should be something
	like this:
	New number: 0 Sum: 0
	New number: 1 Sum: 1
	New Number: 2 Sum: 3
	New number: 3 Sum: 6
	New Number: 255 Sum: ___.
	Do NOT use an array to do this exercise.
=end

# 					▼▼▼▼ [#3] Answer 1 ▼▼▼▼
# sum = 0
# (1..255).each { |n| puts "New number: #{n} Sum: #{sum+=n}" }
#-----------------------------------------------------------------
#4
=begin
	Iterating through an array
	Given an array X, say [1,3,5,7,9,13], write a program that would
	iterate through each member of the array and print each value on
	the screen.  Being able to loop through each member of the array
	is extremely important.
=end

# 					▼▼▼▼ Answer 1 ▼▼▼▼
# X = [1,3,5,7,9,13]
# puts X
# X.each { |n| puts n }
#-----------------------------------------------------------------
#5
=begin
	Find Max
	Write a program (sets of instructions) that takes any array and
	prints the maximum value in the array. Your program should also
	work with a given array that has all negative numbers
	(e.g. [-3, -5, -7]), or even a mix of positive numbers, negative
	numbers and zero.
=end

# 					▼▼▼▼ Answer 1 ▼▼▼▼
# negative_array = [-3, -5, -7]
# puts negative_array.max
# new_array = [-3, -5, -7, 5, 0, -2, 3]
# puts new_array.max
#-----------------------------------------------------------------
#6
=begin
Get Average
Write a program that takes an array, and prints the AVERAGE of
the values in the array. For example for an array [2, 10, 3],
your program should print an average of 5. Again, make sure you
come up with a simple base case and write instructions to solve
that base case first, then test your instructions for other
complicated cases. You can use a count function with this assignment.
=end
# average_array = [2, 10, 3]
# puts average_array.reduce(:+) / average_array.size
# # reduce(:+) will add all the numbers from the array
# 					▼▼▼▼ Answer 1 ▼▼▼▼
# average_array = [2, 10, 3]
# puts average_array.reduce(:+) / average_array.size
# # reduce(:+) will add all the numbers from the array
#-----------------------------------------------------------------
#7
=begin
	Array with Odd Numbers
	Write a program that creates an array 'Y' that contains all the
	odd numbers between 1 to 255. When the program is done, 'y'
	should have the value of [1, 3, 5, 7, ... 255].
=end

# 					▼▼▼▼ Answer 1 ▼▼▼▼
# puts y = (1..255).select(&:odd?)
#-----------------------------------------------------------------
#8
=begin
	Greater Than y
	Write a program that takes an array and returns the number of
	values in that array whose value is greater than a given value y.
	For example, if array = [1, 3, 5, 7] and y = 3, after your
	program is run it will print 2 (since there are two values in
	the array that are greater than 3).
=end

# 					▼▼▼▼ Answer 1 ▼▼▼▼
# array = [1, 3, 5, 7]
# y = 3
# counter = 0
# array.each { |array| counter+=1 if array > 3 }
# puts counter
#-----------------------------------------------------------------
#9
=begin
	Square the values
	Given any array x, say [1, 5, 10, -2], create an algorithm
	(sets of instructions) that multiplies each value in the array
	by itself.  When the program is done, the array x should have
	values that have been squared, say [1, 25, 100, 4].
=end

# 					▼▼▼▼ Answer 1 ▼▼▼▼
# x = [1, 5, 10, -2]
# x.each { |x| puts x*x }
#-----------------------------------------------------------------
#10
=begin
Eliminate Negative Numbers
Given any array x, say [1, 5, 10, -2], create an algorithm that
replaces any negative number with the value of 0.  When the
program is done, x should have no negative values, say
[1, 5, 10, 0].
=end

# 					▼▼▼▼ Answer 1 ▼▼▼▼
# x = [1, 5, 10, -2]
# x.each { |x| if x>0 then puts x else puts 0 end }
# # x.each { |x| x>0 ? (puts x) : (puts 0) }
#-----------------------------------------------------------------
#11
=begin
	Max, Min, and Average
	Given any array x, say [1, 5, 10, -2], create an algorithm that
	prints the maximum number in the array, the minimum value in the
	array, and the average of the values in the array.
=end

# 					▼▼▼▼ Answer 1 ▼▼▼▼
# x = [1, 5, 10, -2]
# max = x[0]
# min = x[0]
# x.each { |x| max=x if x>max }
# x.each { |x| min=x if x<min }
# puts "Max = #{max}"
# puts "Min = #{min}"
# puts "Average = #{x.reduce(:+) / x.size.to_f} "
#-----------------------------------------------------------------
#12
=begin
	Shifting the values in the array
	Given any array x, say [1, 5, 10, 7, -2], create an algorithm that
	shifts each number by one to the front.  For example, when the
	program is done, an x of [1, 5, 10, 7, -2] should become
	[5, 10, 7, -2, 0].
=end

# 					▼▼▼▼ Answer 1 ▼▼▼▼
# x = [1, 5, 10, 7, -2]
# counter = 0
# x.each { x[counter] = x[counter+=1] }
# x[x.size-1] = 0
# puts x
#-----------------------------------------------------------------
#13
=begin
	Number to string
	Write a program that takes an array of numbers and replaces any
	negative number with the string 'Mehdi'.  For example, if array x
	is initially [-1, -3, 2] after your program is done that array
	should be ['Mehdi', 'Mehdi', 2].
=end

# 					▼▼▼▼ Answer 1 ▼▼▼▼
x = [-1, -3, 2]
x.each { |x| if x>0 then puts x else puts 'Mehdi' end }
# x.each { |x| x>0 ? (puts x) : (puts 'Mehdi') }
