#ruby symbols
#symbols are immutable names primarily used as hash keys or for referencing method names

my_bologna = {
  first_name: "Oscar",
  second_name: "Meyer",
  slices: 12
}

puts my_bologna[:second_name]

#ruby hashes, symbols and values
#in ruby hashes, symbols and their values can be defined in either of 2 ways, using a => or : to separate keys from values 

my_colors = {
  :color1 => "purple",
  :color2 => "black",
  #key symbols and their values can be defined with hash rocket
  :favorite? => true
}

my_progress = {
  program: "Codecademy",
  language: "Ruby",
  enthusiastic?: true
}
#can also be defined with a colon instead of hash rocket 

#Ruby .select method
# the .select method can be used to grab specific values from a hash that meet certain criteria 

olympic_trials = {
  Sally: 9.58,
  John: 9.69,
  Bob: 14.91
}

olympic_trials.select {|name, time| time < 10.0}

#ruby .each_key &  .each_value
#used to iterate over only the keys or only the values in a hash

eren_jaeger = {
  age: 15,
  enemy: "titans",
  branch: "Survey Corps"
}

eren_jaeger.each_key {|key| puts key}
eren_jaeger.each_value {|value| puts value}

#ruby case statement
#a case statement is a more concise alternative to an if/else statement that contains many conditions

tv_show = "Angela"

case tv_show
when "Archer"
    puts "I don't like the voice of Archer"
when "Bob's Burgers"
    puts "I love the voice of Bob Belcher"
else 
  puts "I don't know who voices this character"
end 

#ruby .respond_to?
# .respond_to? takes a symbol representing a method name and returns true if that method can be called on the object and false otherwise

puts "A".respond_to?(:push)
# => false
# here, the following ruby code will return false since .push can't be called on a string object 

puts "A".respond_to?(:next)
# => true
# ruby code will return true since .next can be called on a string object 

#.collect method
# takes a block and applies the expression in the block to every element of an array
first_arr = [3, 4, 5]
second_arr = first_arr.collect {|num| num * 5}

print second_arr

#ruby yield keyword 
#used to transfer control from a method to a block and then back to the method once executed

def yield_test
  puts "I'm inside the method"
  yield
  puts "I'm also inside the method."
end 

yield_test {puts ">>> I'm butting into the method!"}

#ruby proc
#a proc is an instance of the Proc class and is similar to a block. as opposed to a block, a proc is a ruby object which can be stored in a variable and therefore reused many times throughout a program 

square = Proc.new {|x| x ** 2}
#a proc is defined by calling Proc.new followed by a block

[2, 4, 6].collect!(&square)
#when passing a proc to a method, an & is used to convert the proc into a  block 

puts [2, 4, 6].collect!(&square)

#summary
#a block is just a bit of code between do..end or {}.  it's not an object on its own, but it can be passed to methods like .each or .select 

# a proc is  saved block we can use over and over

#a lambda is just like a proc, only it cares about the number of arguments it gets and it returns to its calling method rather than returning immediately 

#lambda syntax
#lambda { |param| block}

#lambdas useful in the same situations you'd use a proc

#an array of strings, but we want an array of symbols

strings = ["leonardo", "donatello", "raphael", "micheangelo"]

#create a variable called symbolize. in symbolize, store a lambda that takes one parameter and calls .to_sym on that parameter

symbolize = lambda { |x| x.to_sym }

#use symbolize with .collect method to convert items in strings to symbols

symbols = strings.collect(&symbolize)

#lambda vs proc
#a lambda checks the # of arguments passed to it, a proc does not
#a lambda will throw an error if you pass it the wrong # of arguments, where a proc will ignore unexpected arguments and assign nil to any that are missing 

#when a lambda returns, it passes control back to the calling method; 
#when a proc returns, it does so immediately, without going back to calling method 

