# VARIABLES
set day "Saturday"
set sunset 18

# CONCATENATION
puts "###### CONCATENATION ######"
set result ""
append result $day " " $sunset
puts $result

set result [expr 3 + 2]
puts $result

set name "Joe"
set greeting [concat "Hello " $name " it is " $sunset "pm"]
puts $greeting
puts ""

################################
##### BASIC OPERATIONS ######
################################
#       X + Y   X - Y   X * Y   X / Y   X % Y
#       sqrt(Y) abs(Y)  pow(X,Y)    rand()  round(X)
puts "###### BASIC OPERATIONS ######"
set t 3.0
set v 70.0
set d [expr $v*(1.0/1000.0)*60*60*$t]
puts $d

set g 9.81
set v 20.0
set R [expr round(pow($v, 2) / $g)]
puts $R
puts ""

################
# CONDITIONALS #
################
#   ==  !=  >   >=  <   <=
puts "###### CONDITIONALS ######"
set some_int 12

#be carefull with blank spaces between colibris {}
if {$some_int == 12} {
    puts [concat "Value is: " $some_int]
} elseif {$some_int <= 12} {
    puts [concat "Value less than 12: " $some_int]
} else {
    puts "Something goes wrong"
}

#ternary operator
set dimmer_power [expr $some_int <= 12? 10:50]
puts $dimmer_power
puts ""


################################
##### LOGICAL OPERATIONS ######
################################
#   &&  ||  !

################################
########## STRINGS ###########
################################
#   \n  ->  New Line 
#   \r  ->  Carriage return
#   \t  ->  Horizontal tab 
#   \v  ->  Vertical tab
#   \a  ->  Alert or bell (audible)
#   \b  ->  Backspace
#   \f  ->  Form feed (page break)
#   COMANDOS DE STRINGS
#   compare STR1 STR2 ->  compare two string letter by letter
#   first   STR1 STR2 ->  return de index of first ocurrence of string
#   index   STR n     ->  return the character at index n
#   last    STR1 STR2 ->  return the index of las ocurrence
#   length  STR       ->  return the lenght
#   ratch PATTERN STR ->  return 1 uf STR matches PATTERN
#   range STR n1 n2   ->  return the range of characters from index n1 to index n2 
puts "###### STRINGS ######"
set str "Make: Toyota Model: Land Cruiser Year: 1998"
set s1 [ string first "Model: " $str ]
set make [ string range $str 5 [expr $s1 -1]]
set s2 [ string first "Year: " $str]
set model [ string range $str [expr $s1 + 5] [expr $s2 -1]]
set s3 [ string length $str ]
set s3 [ expr $s3 -1]
set year [ string range $str [expr $s2 + 6] $s3 ]
puts "Make: $make\nModel: $model\nYear: $year"
puts ""

puts "###### LISTS ######"
# Create an empty list
set mylist [list]
# Add an element
lappend mylist "Toyota"
# Add multiple elements
lappend mylist "Land Cruiser" "1998" "Corolla" "Camry" "Avalon"
# Show the list
puts "The list is: $mylist"
# Access individual elements
puts "First element: [lindex $mylist 0]"
puts "Second element: [lindex $mylist 1]"
puts "Third element: [lindex $mylist 2]"
# Change the second element (index 1)
set mylist [lset mylist 1 "Highlander"]
puts "Modified list: $mylist"
# Extract a range of indices (for example, from index 1 to 3)
set sublist [lrange $mylist 1 3]
# Show the extracted sublist
puts "Extracted sublist (indices 1 to 3): $sublist"
# Sort the list
set sortedlist [lsort $mylist]
# Show the sorted list
puts "Sorted list: $sortedlist"
puts "### Print with foreach ###"
foreach cars $mylist {
    puts "Cars: $cars"
}
puts "Length of the list: [llength $mylist]"
puts ""


puts "###### ARRAYS ######"
# Create an array and add elements
array set car {
    "make" "Toyota"
    "model" "Land Cruiser"
    "year" "1998"
    "color" "Red"
    "transmission" "Automatic"
}
# Show the array elements
puts "Array elements:"
foreach {key value} [array get car] {
    puts "$key: $value"
}
# Access individual elements
puts "Make: $car(make)"
puts "Model: $car(model)"
puts "Year: $car(year)"
# Modify an element
set car(model) "Corolla"
puts "Modified Model: $car(model)"
# Add a new element
set car(owner) "John Doe"
puts "Added Owner: $car(owner)"
# Show the modified array
puts "Modified array elements:"
foreach {key value} [array get car] {
    puts "$key: $value"
}
# Get the length of the array (number of elements)
puts "Length of the array: [llength [array names car]]"
# Delete an element
unset car(color)
puts "Array after deleting 'color':"
foreach {key value} [array get car] {
    puts "$key: $value"
}
puts ""
puts ""
puts "###### MULTIDIMENSIONAL ARRAYS ######"
# Create a simulated 2D array
set array(0,0) "a"
set array(0,1) "b"
set array(1,0) "c"
set array(1,1) "d"
# Show the 2D array elements
puts "2D Array elements:"
foreach {key value} [array get array] {
    puts "$key: $value"
}
# Access individual elements
puts "Element at (0,0): $array(0,0)"
puts "Element at (0,1): $array(0,1)"
puts "Element at (1,0): $array(1,0)"
puts "Element at (1,1): $array(1,1)"
# Modify an element
set array(1,1) "z"
puts "Modified Element at (1,1): $array(1,1)"
# Add a new element
set array(2,0) "e"
puts "Added Element at (2,0): $array(2,0)"
# Show the modified 2D array
puts "Modified 2D Array elements:"
foreach {key value} [array get array] {
    puts "$key: $value"
}
# Get the length of the array (number of elements)
puts "Length of the array: [llength [array names array]]"
# Delete an element
unset array(0,1)
puts "2D Array after deleting element at (0,1):"
foreach {key value} [array get array] {
    puts "$key: $value"
}
