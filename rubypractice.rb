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

