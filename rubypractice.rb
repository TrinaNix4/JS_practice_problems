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