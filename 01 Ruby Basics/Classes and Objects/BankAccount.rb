# This is a simple bank account software. The user enters his name and his transactions and then at the end when he is finished, his 
# balance is displayed on the screen

class BankAccount
    
    attr_reader :name

    def initialize(name, amount)
        @name = name
        @transactions = Array.new
        do_transaction("Starting deposit", amount)
    end

    def credit(reason, amount)
        do_transaction(reason, amount)
    end

    def debit(reason, amount)
        account_balance = balance() - amount
        if account_balance < 0 
            puts "Cannot complete the transaction as insufficient funds"
        else    
            do_transaction(reason, -amount)
        end
    end

    #returns the balance
    def balance
        amount = 0
        @transactions.each do |hash|
            amount += hash[:amount]
        end

        return amount
    end

    def do_transaction(reason, amount)
        @transactions.push(reason: reason, amount: amount)
    end
    
    def display
        puts "------------------------"
        puts "Bank account holders name: #{name}"
        puts "Showing your transaction history\n" + "-" *60
        balance = 0
        @transactions.each do |hash|
            puts "Reason: #{hash[:reason]}".ljust(30) + "Debit/Credit #{hash[:amount]}".ljust(20) + "Balance left #{balance += hash[:amount]}".rjust(10)
        end
        puts "Your closing balance is " + balance().to_s + "\n" + "-"*60
        puts "End of your tansaction history"
    end
end



def ask(question)
    puts question + " "
    return gets.chomp
end

def start_bank_account
    name = ask("Please enter your name")
    amount = ask("Please enter the starting amount. Only Numbers").to_i
    @bank_account = BankAccount.new(name,amount)
end



# user starts bank account
start_bank_account

loop do
    answer = ask("Do you want to debit / credit / display transactions / exit this transaction status").downcase
    if answer == "debit"
        reason = ask("Please describe the nature of the transaction")
        amount = ask("Please enter the amount to deduct. Only numbers").to_i
        @bank_account.debit(reason, amount)
    elsif answer == "credit"
        reason = ask("Please describe the nature of the transaction")
        amount = ask("Please enter the amount to credit. Only numbers").to_i
        @bank_account.credit(reason, amount)
    elsif answer == "display transactions"
        @bank_account.display
    else
        break
    end
end
