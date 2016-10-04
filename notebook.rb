# note_book.rb

require './notebase'
require './note'

# This is notebook class
class Notebook < Notebase
  attr_reader :notes

  @@instances = Hash.new { nil }

  def self.instances
    @@instances
  end

  def self.create(name, owner = '', description = '')
    notebook = Notebook.new(name, owner, description)
    @@instances[notebook.id] = notebook
    notebook
  end

  def self.delete(name)
    key = Notebook.encode(name)
    return nil if @@instances[key].nil?
    @@instances.delete(key)
    name
  end

  def self.notebook?(arg)
    key = Notebook.encode(arg)
    !@@instances[key].nil?
  end

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
    notes.delete(key) unless notes[key].nil?
    name
  end

  def note?(name)
    key = Note.encode(name)
    !notes[key].nil?
  end
end
