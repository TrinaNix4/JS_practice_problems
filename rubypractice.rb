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
  :color2 => "black"
  #key symbols and their values can be defined with hash rocket
  :favorite? => true
}

my_progress = {
  program: "Codecademy",
  language: "Ruby",
  enthusiastic? = true
}
#can also be defined with a colon instead of hash rocket 