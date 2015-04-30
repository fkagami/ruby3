class Hello
  def say(to)
    "#{to}, Good morning"
  end
end

class PoliteHello < Hello
  def say(to)
    "#{to}様、こんにちは"
  end
end

hello = PoliteHello.new()
puts(hello.say("山田"))
