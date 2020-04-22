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
       @happiness = new_index
         end
         if new_index <= 0
            @happiness = 0
         end
         if new_index >= 10
            @happiness = 10
         end
        
    
    end
    
    def hygiene
        @hygiene
    end
    def hygiene=(new_index)
         if new_index <= 10 && new_index > 0
            @hygiene = new_index
         end
         if new_index <= 0
            @hygiene = 0
         end
         if new_index >= 10
            @hygiene = 10
         end

    end
    def happy?
         if @happiness > 7
         return true
         else
        return false
    end
end

def clean?
    if @hygiene > 7
        return true
    else
        return false
    end
end
        def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
      end

      def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
      end
      def work_out
           self.hygiene -= 3
           self.happiness += 2
           "♪ another one bites the dust ♫"
      end
      def call_friend(name)
        self.happiness += 3
        name.happiness += 3
        "Hi #{name.name}! It's #{self.name}. How are you?"
      end 

      def start_conversation(name, topic)
          if topic == "politics"
            self.happiness -= 2 
            name.happiness -= 2
            "blah blah partisan blah lobbyist" 
          elsif topic == "weather" 
            self.happiness += 1 
            name.happiness += 1
            "blah blah sun blah rain"
          else 
            "blah blah blah blah blah"
          end
      end

end
# your code goes here
jim = Person.new("Jim")
tim = Person.new("Tim")
puts jim.call_friend(tim)
#puts jim.bank_account
#puts jim.get_paid(15)
#puts tim.bank_account
#original_amount = person.bank_account
            #expect(person.bank_account += 1).to eq (original_amount + 1)
            #attr_writer :name