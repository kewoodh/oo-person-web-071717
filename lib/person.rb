class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

  def get_paid(salary)
    self.bank_account+= salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene+=4
    return"♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness+=2
    self.hygiene-=3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend = Person.new("Felix"))
    friend.happiness +=3
    self.happiness +=3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)

    people = [self, friend]
  case topic
    when "politics"
      people.map do |person|
        person.happiness -=2
      end
        return "blah blah partisan blah lobbyist"
    when "weather"
      people.map do |person|
        person.happiness +=1
        end
        return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
