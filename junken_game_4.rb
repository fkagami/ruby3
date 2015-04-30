class Player
  PAPER = 0
  SCISSORS = 1
  STONE = 2
  POINTS_TO_WIN = 3
  WIN = {
    [PAPER, STONE] => true,
    [SCISSORS, PAPER] => true,
    [STONE, SCISSORS] => true
  }
  HANDS = ["パー","チョキ","グー"]

  def initialize(name)
    @point = 0
    @choice = nil
    @name = name
  end

  def fight(other)
    while !victory? && !other.victory?
      decide()
      other.decide()
      puts "#{name}: #{HANDS[choise]}, #{other.name}: #{HANDS[other.choise]}"
      judge(other)
      other.judge(self)
    end
  end

  def victory_speech()
    if victory?
      puts "#{name}の勝ち"
    end
  end

  protected

  def decide()
    @choise = rand(3)
  end

  attr_reader :choise, :name

  def judge(other)
    if WIN[[choise, other.choise]]
      @point += 1
    end
  end

  def victory?()
    @point == POINTS_TO_WIN
  end
end

class HumanPlayer < Player
  def decide()
    puts "0 1 2"
    @choise = Integer(gets())
  end
end

computer = Player.new("COM")
player = HumanPlayer.new("YOU")
computer.fight(player)
computer.victory_speech()
player.victory_speech
