require "./logic_device"

class Or < logic_device
  private
  def compute_output(idx)
    @input.each do |b|
      return 1 if b == 1
    end
    0
  eachnd
end

