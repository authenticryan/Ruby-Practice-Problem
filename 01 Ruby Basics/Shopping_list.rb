##  Simple shopping list. 

# hash and item_hash are 2 hash data structures with respective keys. item_hash is embeded within items[] in hash
#hash      - name, items[]
#item_hash - item, quantity 


#creates and returns a hash list
def create_list
    print "What's the name of the list? "
    name = gets.chomp
    hash = {"name" => name, "items" => []}
    hash
end

#creates item_hash and add it to the items array in hash
def add_item(hash) 
    printf "Enter the items to be added: "
    item = gets.chomp
    printf "Enter the quantity: "
    quantity = gets.chomp

    item_hash = {"item" => item, "quantity" => quantity}
    hash["items"].push(item_hash)
    hash
end

#used to print the outcome
def print_hash(hash) 
    puts "\n\nThe current items in the list are:"
    puts "List name:   #{hash.fetch("name")}"
    puts "------------" * 5
    
    hash["items"].each do |items|
        puts "\t\t\t" + items["item"] + "\t\t\t" + items["quantity"]
    end
    
    puts "\n\n"
end


hash = create_list
continue = true

while continue == true
    hash = add_item(hash)
      
    #to decide if the user wants to continue adding programs
    puts "Continue: Y / N ?"
    continue = gets.chomp
    
    if continue.downcase == "y"
        continue = true
    else 
        continue = false
    end

end

print_hash(hash)
