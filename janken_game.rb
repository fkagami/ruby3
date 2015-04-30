PAPER = 0
SCISORS = 1
STONE = 2
WIN = {
  [PAPER, STONE] => true,
  [SCISORS, PAPER] => true,
  [STONE, SCISORS] => true
}
HANDS = ["パー", "チョキ", "グー"]

class Player
  def initialize()
    @point = 0
    @choice = nil
  end

  attr_accessor :choice
  attr_accessor :point
end

computer = Player.new
player = Player.new

while player.point < 3 && computer.point < 3
  puts "パー0 チョキ1 グー2"
  choice = gets()
  player.choice = Integer(choice)
  computer.choice = rand(3)
  puts "あなた #{HANDS[player.choice]}, COM #{HANDS[computer.choice]}"
  if WIN[[player.choice, computer.choice]]
    player.point += 1
  elsif WIN[[computer.choice, player.choice]]
    computer.point += 1
  end
end

if player.point >= 3
  puts "You Win"
else
  put "You Lose"
end
