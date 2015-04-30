class Base
  def hello()
    puts "hello"
  end
end

class Derived
  def hello()
    puts "hi"
  end
end

x = Derived.new
x.hello
y = Base.new
y.hello
