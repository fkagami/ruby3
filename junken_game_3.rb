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

  def initialize(msg)
    @point = 0
    @choice = nil
    @message = msg
  end

  def victory?
    @point == POINTS_TO_WIN
  end

  def fight(other)
    while !self.victory? && !other.victory?
      decide_human()
      other.decide_computer()
      puts "You #{HANDS[choice]}, COM #{HANDS[other.choice]}"
      judge(other)
      other.judge(self)
    end
  end

  def victory_speech
    if victory?
      puts @message
    end
  end

  protected

  def decide_human()
    puts "0 1 2"
    @choice = Integer(gets())
  end

  def decide_computer
    @choice = rand(3)
  end

  attr_reader :choice

  def judge(other)
    if WIN[[choice, other.choice]]
      @point += 1
    end
  end
end

computer = Player.new("You Lose")
player = Player.new("You WIN")
player.fight(computer)

computer.victory_speech()
player.victory_speech()
