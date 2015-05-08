class LogicDevice
  def initialize
    @input = []
  end

  def set_input(idx = 0, value)
    @input[idx] = value
  end

  def get_output
    compute_output(idx)
  end

  private
  def compute_output(idx)
  end
end
