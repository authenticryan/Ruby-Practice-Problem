# Creation of a simple class. 

class MyClass
    def initialize
        puts "This is the initialize method being called"
        puts "I am now calling print_nothing function"
        print_nothing
    end

    def print_nothing
        puts "This is printing nothing from the print_nothing class"
    end
end

MyClass.new
