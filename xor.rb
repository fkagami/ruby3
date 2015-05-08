class Xor
  def initialize
    @input = []
  end

  def set_input(idx, value)
    @input[idx] = value
  end

  def get_output
    i = 0
    @input.each do |idx|
      i += idx
    end
    if i % 2 == 0
      return 0
    else
      return 1
    end
  end
end

o = Xor.new
o.set_input(0,0)
o.set_input(1,0)
puts "0 or 0 = #{o.get_output}"
o.set_input(0,0)
o.set_input(1,1)
puts "0 or 1 = #{o.get_output}"
o.set_input(0,1)
o.set_input(1,0)
puts "1 or 0 = #{o.get_output}"
o.set_input(0,1)
o.set_input(1,1)
puts "1 or 1 = #{o.get_output}"
