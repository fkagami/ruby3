class Or
  def initialize
    @input = []
  end

  def set_input(idx, value)
    @input[idx] = value
  end

  def get_output
    @input.each do |b|
      return 1 if b == 1
    end
    0
  end
end
