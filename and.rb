class And
  def initialize
    @input = []
  end

  def set_input(idx, value)
    @input[idx] = value
  end

  def get_output
    @input.each do |b|
      return 0 if b == 0
    end
    1
  end
end

o = And.new
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
