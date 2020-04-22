class Person
    attr_writer :name
    def initialize(name, bank_account = 25)
        @name = name
        @bank_account = bank_account
    end
    #def name
        #@name
    #end
    def bank_account
        @bank_account = bank_account
     end
    def bank_account=(new_money)
       @bank_account = new_money
    end
    
end# your code goes here
