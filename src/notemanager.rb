# notemanager.rb

require './notebook'

# This is container class
class Notemanager < Notebase
  attr_reader :notebooks

  def initialize
    @notebooks = Hash.new { nil }
  end

  def create_notebook(name, owner = '', description = '')
    notebook = Notebook.new(name, owner, description)
    notebooks[notebook.id] = notebook
    notebook
  end

  def delete_notebook(name)
    return nil unless notebook?(name)
    key = Notebook.encode(name)
    notebooks.delete(key)
    name
  end

  def select_notebook(name)
    return nil unless notebook?(name)
    key = Notebook.encode(name)
    notebooks[key]
  end

  def notebook?(name)
    key = Notebook.encode(name)
    return true if notebooks.key?(key)
    false
  end
end
