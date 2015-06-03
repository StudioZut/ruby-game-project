class Player
  attr_reader :health
  attr_accessor :name
  #attr_reader :score
  def initialize(name,health=100) 
    @name = name.capitalize
    @health = health
    @found_treasures = Hash.new(0)
  end
  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end
  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end
  def uppercase
    @name = @name.upcase
    puts "#{@name} got upcased"
  end
  def score
    @health + points
  end
  def to_s
    "I'm #{@name} with health = #{@health}, points = #{points}, and a score of #{score}"
  end

  def strong?
    @health > 100
  end

  def <=>(other)
    other.score <=> score
  end

  def found_treasure(treasure)
    @found_treasures[treasure.name] += treasure.points
    puts "#{@name} found a #{treasure.name} worth #{treasure.points} points."
    puts "#{@name}'s treasures: #{@found_treasures}"
  end

  def points
    @found_treasures.values.reduce(0, :+)
  end

  def each_found_treasure
    @found_treasures.each do |name, points|
      yield Treasure.new(name, points)
    end
  end

  def self.from_csv(string)
    name, health = string.split(',')
    Player.new(name, Integer(health))
  end

end

if __FILE__ == $0
player1 = Player.new("arkly")
player2 = Player.new("barkly", 60)
player3 = Player.new("carkly", 125)

puts player1
player1.blam
puts player1
player1.w00t
puts player1
puts player1.health
player1.name = "binkley"
puts player1
puts player1.score
end
