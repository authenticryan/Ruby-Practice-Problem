##  This program takes the number of widget the user wants to purchase and runs it through a function 
##  which calculates the cost of each widget. If the user wants less than 50 widgets, the price per widget is 10.
##  If the number of widgets is 50 or more, the cost per widget is 9
##  If the number of widgets is 100 or more, the cost per widget is 8.

##  Told you, its no worth going through this code. PUN INTENDED. have fun ahead

def ask(question) 
    print question + " "
    gets.chomp.to_i                    #returns the integer that was inputed from the keyboard
end

def price(quantity)
    if quantity >= 100
        price_per_unit = 8
    elsif quantity >= 50  
        price_per_unit = 9
    else 
        price_per_unit = 10
    end

    quantity*price_per_unit 
end

puts "Welcome to the widget store"
number = ask "How many widgets do you want to buy? "

total_cost = price(number)

puts "Your total cost for #{number} widgets bought is Rs #{total_cost}"


