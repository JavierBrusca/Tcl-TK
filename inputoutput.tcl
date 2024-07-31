# Procedure to get user input
proc getInput {prompt} {
    puts -nonewline "$prompt"
    flush stdout
    gets stdin input
    return $input
}

# Get the user's name
set name [getInput "Enter your name: "]

# Get the user's age
set age [getInput "Enter your age: "]

# Print the greeting message
puts "Hello, $name! You are $age years old."
