class Person
    
    def initialize(name, happiness = 8, bank_account = 25, hygiene = 8 )
        @name = name
        @bank_account = bank_account
        @happiness = happiness 
        @hygiene = hygiene
    end
    
    def name
        @name
    end
    def bank_account
       @bank_account
     end
    def bank_account=(new_money)
      @bank_account = new_money
    end
    def happiness
        @happiness
    end
    def happiness=(new_index)
        if new_index <= 10 && new_index > 0
        #elsif new_index > 0
       @happiness = new_index
         end
         if new_index <= 0
            @happiness = 0
         end
         if new_index >= 10
            @happiness = 10
         end
         if @happiness > 7
            return true
            else
               return false
            end
    end
    
      def hygiene
        @hygiene
    end
    def hygiene=(new_index)
        if new_index <= 10 && new_index > 0
        #elsif new_index > 0
       @hygiene = new_index
         end
         if new_index <= 0
            @hygiene = 0
         end
         if new_index >= 10
            @hygiene = 10
         end
         if @hygiene > 7
         return true
         else
            return false
         end
      end

      def get_paid(salary)
        self. bank_account += salary

      end
end# your code goes here

#original_amount = person.bank_account
            #expect(person.bank_account += 1).to eq (original_amount + 1)
            #attr_writer :name