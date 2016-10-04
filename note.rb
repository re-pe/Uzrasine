# note.rb
require './notebase'

# This is note class
class Note < Notebase
  attr_reader :id, :notebook, :author

  def initialize(name, notebook, author = '', description = '')
    self.name = name
    @notebook = notebook
    @author = author
    @description = description
  end
end
