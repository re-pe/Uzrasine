valtypes = [String, Numeric]
val = []
puts val.type
allowed = false
valtypes.each { |type| puts type; allowed = true if val.is_a?(type) }
puts "allowed = #{allowed}"