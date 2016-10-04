# note_test.rb

require './note'
require 'power_assert'

note = Note.new("mano pastaba", '')

puts note.to_s
puts note.inspect
puts note.id
print "note.name == 'mano pastaba' => ", note.name == 'mano pastaba'