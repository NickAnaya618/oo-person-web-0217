class Person
  attr_accessor :happiness, :hygiene, :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  def happiness=(num)
    if num > 10
      num = 10
    elsif num < 0
      num = 0
    end

    @happiness = num
  end

  def hygiene=(num)
    if num > 10
      num = 10
    elsif num < 0
      num = 0
    end

    @hygiene = num
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    [friend, self].each {|o| o.happiness += 3 }

    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
   objects = [self, person]
   if topic == "politics"
     objects.each { |o| o.happiness -= 2}
     first, second = ["partisan", "lobbyist"]
   elsif topic == "weather"
     objects.each { |o| o.happiness += 1}
     first, second = ["sun", "rain"]
   end
   first ||= "blah"
   second ||= "blah"
   base_string = "blah blah #{first} blah #{second}"
 end



end
