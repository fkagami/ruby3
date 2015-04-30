class Accumulator
  def initialize()
    @total = 0
  end

  def add(n)
    @total += n
  end
  #普通はアクセサ付けて、インスタンスメソッドを当てる
  def to_s
    "#{@total}"
  end
end

acm = Accumulator.new()
acm.add(10)
acm.add(1)
puts "10と1の合計は#{acm}"
