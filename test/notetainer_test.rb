#notetainer_test.rb

require './notetainer.rb'

notetainer = Notetainer.new
notebook = notetainer.create_notebook('defi')
print "notetainer.notebooks => ", notetainer.notebooks, "\n"
print "notetainer.notebooks.key?('defi') => ", notetainer.notebooks.key?(Notetainer.encode('defi')), "\n"
print "notetainer.notebook?('defi') => ", notetainer.notebook?('defi'), "\n"
notetainer.delete_notebook('defi')
print "notetainer.notebook?('defi') => ", notetainer.notebook?('defi'), "\n"

notebook = notetainer.create_notebook('efij')
notebook = notetainer.create_notebook('fijk')
print "notebook.name => ", notebook.name, "\n"