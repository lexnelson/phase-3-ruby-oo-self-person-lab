# your code goes here
class Person 
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    
    def initialize(name, bank_account = 25, happiness=8, hygiene=8)
        @name=name
        @bank_account=bank_account
        @happiness=happiness
        @hygiene=hygiene
    end
    def happiness=(num)
        if num >10
            @happiness = 10
        elsif num < 0
            @happiness = 0
        else 
            @happiness = num
        end
    end
    def hygiene=(num)
        if num >10
            @hygiene = 10
        elsif num < 0
            @hygiene = 0
        else 
            @hygiene = num
        end
    end
    def clean?
        @hygiene >7 ? true : false
    end
    def happy?
        @happiness > 7 ? true : false 
    end
    def get_paid(num)
        @bank_account += num
        "all about the benjamins"
    end
    def take_bath 
        self.hygiene= hygiene + 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        self.hygiene = hygiene - 3
        self.happiness = happiness + 2
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic.to_str == 'politics'
            self.happiness -=2
            friend.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic.to_str == 'weather'
            self.happiness +=1
            friend.happiness +=1
            "blah blah sun blah rain"
        else 
             "blah blah blah blah blah"
            
        end
    end
end