class Hello
  def initialize(select)
    @selector = select
  end

  def hello
    puts(@selector.create_message())
  end
end

class EnglishHello
  def create_message()
    "Hello"
  end
end

class JapaneseHello
  def create_message()
    "KOnichiwa"
  end
end

Hello.new(JapaneseHello.new).hello
Hello.new(EnglishHello.new).hello
