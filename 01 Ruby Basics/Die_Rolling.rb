# randomly generates a number and simultaneously asks the user to input his guess. If the guess is correct, the use is notified


def outcome
    return (rand 6) + 1
end

puts "Whats your guess? "
guess = gets.to_i

if guess == outcome
    puts "Corrent guess"
else 
    puts "Sorry, it was not your lucky day"
end
