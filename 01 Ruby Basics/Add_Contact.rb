# Program to create a basic contacts list. The user enters if he wants to enter a contact and then given a choise to enter a phone number. 
# Code is highly inefficient. Realized that. Will be redoing it in a months time. 

# add a contact and return the hash
def add_contact
    print "Enter the name to be added "
    name = gets.chomp.downcase
    print "Do you want to enter a phone number?  (y / n)"
    answer = gets.chomp.downcase

    number = []
    while answer == 'y'
        print "Enter the phone number:  "
        number.push(gets.chomp)
        print "Do you want to add another number? (y / n):  "
        answer = gets.chomp.downcase
    end

    hash = {"name" => name, "phone no" => number}
    
    return hash
end

# print the contents of the contact list at the end of the program
def print_contacts(name) 
    puts "Your contact list"

    name.each do |hash|
        puts "-----"
        puts "Name: #{hash["name"]}"
        i = 0
        while i < hash["phone no"].length
            puts "Phone: #{hash["phone no"][i]}"
            i += 1
        end
    end
end


continue = "y"
name = []

# below while loop is used to decide if a contact is to be added or not
# if added, it is stored in a array, "name"

i = 0
while continue == "y" 
    name[i] = add_contact
    i += 1
    puts "Enter another contact? (y / n)"
    continue = gets.chomp.downcase
end

print_contacts(name)
