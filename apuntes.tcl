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
