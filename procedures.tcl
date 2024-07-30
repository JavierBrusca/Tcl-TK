# Define a procedure that prints "Hello, World!"
proc printHelloWorld {} {
    puts "Hello, World!"
}

# Call the procedure
printHelloWorld

# Define a recursive procedure to print "Hello, World!" n times
proc printHelloWorldRecursive {n} {
    if {$n > 0} {
        puts "Hello, World!"
        # Call the procedure recursively, decrementing n by 1
        printHelloWorldRecursive [expr {$n - 1}]
    }
}

# Call the procedure with the desired number of repetitions
printHelloWorldRecursive 5
