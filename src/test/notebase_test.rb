# notebase_test.rb

require './notebase'

notebase = Notebase.new
print "notebase => ", notebase, "\n"

notebase.name = "New name"
print "notebase.name => ", notebase.name, "\n"
print "notebase.id => ", notebase.id, "\n"

notebase.description = "New description"
print "notebase.description => ", notebase.description, "\n"

print 'notebase.encode("abc") => ', notebase.encode("abc")