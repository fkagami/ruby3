require "./logic_device"

class Not < LogicDevice
  private
  def compute_output(idx)
    if @input[0] == 1
      0
    else
      1
    end
  end
end
