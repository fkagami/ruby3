require "./stage01ornot"

nt = Not.new
nt.set_input(0)
puts "not 0 = #{nt.get_output}"
nt.set_input(1)
puts "not 1 = #{nt.get_output}"
