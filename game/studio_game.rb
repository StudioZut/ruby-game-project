require_relative "player"
require_relative "game"

player1 = Player.new("arkly")
player2 = Player.new("barkly", 60)
player3 = Player.new("carkly", 125)

knuckle = Game.new("Knuckleheads")
knuckle.load_players(ARGV.shift || "players.csv")
#knuckle.add_player(player1)
#knuckle.add_player(player2)
#knuckle.add_player(player3)
#knuckle.play(3)
#knuckle.print_stats

loop do
  puts "\nHow many game rounds? ('quit' to exit, or 'exit' to quit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    knuckle.play(answer.to_i)
  when 'quit', 'exit', 'q'
    knuckle.print_stats
    knuckle.save_high_scores
    break
  else
    puts "Please enter a numner or 'quit' (or even 'exit')"
  end
end

#player1 = Player.new("barkley")
#puts player1
#player1.blam
#puts player1
#player1.w00t
#puts player1
#puts player1.health
#player1.name = "binkley"
#puts player1
#puts player1.score

#player1.uppercase
#player2 = Player.new("carkley", 60)
#puts player2
#player3 = Player.new("darkley", 125)
#puts player3

#puts player1.inspect
#puts player2.inspect

#players = [player1, player2, player3]

#puts "there are #{players.length} players in the game"

#players.each do |playa|
#  puts playa
#end

#players.each do |playa|
#  puts playa.health
#end

#players.each do |playa|
#  playa.blam
#  playa.w00t
#  puts playa
#end

#players.pop
#player4 = Player.new("shemp", 90)
#players << player4

#players.each do |foo|
# puts foo
#end

#puts players.length
