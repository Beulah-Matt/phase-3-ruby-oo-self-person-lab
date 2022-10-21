class Person
    attr_reader :name , :happiness, :hygiene
    attr_accessor :bank_account

    def initialize (name)
        @name=name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(scale)
        @happiness =  if scale > 10
                      10
                    elsif scale < 0
                      0
                    else
                      scale
                    end
     end

     def hygiene=(scale)
        @hygiene =  if scale > 10
                      10
                    elsif scale < 0
                      0
                    else
                      scale
                    end
     end

     def clean?
        self.hygiene > 7
     end

     def happy?
        self.happiness > 7
     end

attr_writer :amount, :take_bath, :work_out, :friend

    def get_paid(amount)
      self.bank_account += amount
       "all about the benjamins"
    end 

    def take_bath
        self.hygiene +=4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    
    def work_out
        self.hygiene -=3
        self.happiness +=2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.friend= friend
        self.happiness += 3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            [self, friend].each { |person| person.happiness -= 2 }
            "blah blah partisan blah lobbyist"
          when "weather"
            [self, friend].each { |person| person.happiness += 1 }
            "blah blah sun blah rain"
          else
            "blah blah blah blah blah"
        end
    end
end
