require './tkeyval'
require './tarray'

_ = TKeyVal

def _(*args)
  TKeyVal.call(*args)
end

tkeyval = TKeyVal.new("labas", 15)
tkeyval = TKeyVal.("labas", 15)
tkeyval2 = tkeyval.()
# tkeyval3 = TKeyVal.new("gero")

# tkeyval.key = "labas"
# tkeyval.val = 15

tkeyval3 = _.("viso", "gero")
tkeyval4 = _("sveikas", "pasauli")
tkeyval5 = _("Marsas")

print "tkeyval = #{tkeyval}; tkeyval.key = #{tkeyval.key}; tkeyval.val = #{tkeyval.val}\n"
print "tkeyval2 = #{tkeyval2}; tkeyval2.key = #{tkeyval2.key}; tkeyval2.val = #{tkeyval2.val}\n"
print "tkeyval3 = #{tkeyval3}; tkeyval3.key = #{tkeyval3.key}; tkeyval3.val = #{tkeyval3.val}\n"
print "tkeyval4 = #{tkeyval4}; tkeyval4.key = #{tkeyval4.key}; tkeyval4.val = #{tkeyval4.val}\n"
print "tkeyval5 = #{tkeyval5}; tkeyval5.key? = #{tkeyval5.key?}; tkeyval5.val = #{tkeyval5.val}\n"

tkeyval.key = "rytas"
tkeyval.val = 25

print "tkeyval = ", tkeyval, "; tkeyval.key = #{tkeyval.key}; tkeyval.value = #{tkeyval.val}\n"

tArray = TArray.new
puts "tArray = #{tArray}"

tArray2 = TArray.new( 3, _('antras', 2), 5, 4, _('pirmas', 1) )
puts "tArray2 = #{tArray2}"
puts "tArray2.keyvals = #{tArray2.keyvals}"
puts "tArray2.vals = #{tArray2.vals}"
puts "tArray2.keys = #{tArray2.keys}"

# tArray['a'] = TKeyVal(101)
# tArray[] = 102
# tArray['c'] = 103

# tArray[] = 101
# tArray['b'] = 102
# tArray[] = 103
# tArray[1,11] = 1000
# tArray[] = [1000, 1001]

# print "tArray = ", tArray, "\n"
# print "tArray.keys = ", tArray.keys, "\n"

def abc(*args)
  output = args.map.with_index{ |value, i| "#{i}: #{value}" }
  puts "output = ", output
end

abc({antras: 2, pirmas: 1}, 4, 3)

puts "----------------------------------------"

testArr = [:'#', :antras, :'#', :'#', :pirmas]

puts "testArr = " + testArr.to_s

testHash = Hash.new

puts ":lialia.class.name = #{:lialia.class.name}"


testArr = [_(3), _(:antras, 2), _(4), _(:pirmas, 1), _(:antras, 7)]

puts "testArr = " + testArr.to_s

testArr.each_index do |index|
  key = testArr[index].key ? testArr[index].key : :'#'
  testHash[key] = Hash.new unless testHash[key]
  testHash[key][testHash[key].length] = index
end

puts "testHash = " + testHash.to_s

puts "testHash[:'#'] = " + testHash[:'#'].to_s
puts "testHash[:'#'][1] = " + testHash[:'#'][1].to_s
puts "testHash[:pirmas] = " + testHash[:pirmas].to_s
puts "testHash[:pirmas][0] = " + testHash[:pirmas][0].to_s
puts "testHash[:antras] = " + testHash[:antras].to_s
puts "testHash[:antras][1] = " + testHash[:antras][1].to_s

def TArray(*args)
  TArray.new(*args)
end

tarray = TArray( _(3), _(:antras, 2), _(4), _(:pirmas, 1), _(:antras, 7) )

puts "tarray = " + tarray.to_s

puts "tArray[1] = " + tarray[1]
