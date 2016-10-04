#notebook_test.rb 

require './notebook'

notebook = Notebook.create("abcd")
print 'Notebook.instances[notebook.id] == notebook => ', Notebook.instances[notebook.id] == notebook, "\n\n"
print 'Notebook.notebook?("abcd") => ', Notebook.notebook?("abcd"), "\n\n"

deleted = Notebook.delete("abcd")
print 'Notebook.instances[notebook.id].nil? => ', Notebook.instances[notebook.id].nil?, "\n\n"
print 'deleted == "abcd" => ', deleted == 'abcd', "\n\n"

puts "notebook.inspect => ", notebook.inspect, "\n"
puts "Notebook.instances => ", Notebook.instances, "\n"

notebook.create_note("Mano pastaba")
notebook.create_note("Antra pastaba")
notebook.create_note("Trečia pastaba")
puts "notebook.notes => ", notebook.notes, "\n"

notebook.delete_note("Antra pastaba")
puts "notebook.notes => ", notebook.notes, "\n"
Notebook.delete("abcd")
puts "Notebook.instances => ", Notebook.instances, "\n"

