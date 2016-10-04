# note_book.rb

require './notebase'
require './note'

# This is notebook class
class Notebook < Notebase
  attr_reader :notes

  def initialize(name, owner = '', description = '')
    self.name = name
    @notes = Hash.new { nil }
    @owner = owner
    @description = description
  end

  def create_note(name, author = '', description = '')
    note = Note.new(name, id, author, description)
    notes[note.id] = note
    note
  end

  def delete_note(name)
    key = Notebook.encode(name)
    notes.delete(key) unless notes.key?(name)
    name
  end

  def note?(name)
    key = Note.encode(name)
    notes.key?(key)
  end
end
