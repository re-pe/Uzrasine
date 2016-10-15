# notemanager_spec.rb

require 'simplecov'
SimpleCov.start

require_relative 'notebase_spec'
require_relative 'note_spec'
require_relative 'notebook_spec'
require_relative '../notemanager'

describe Notemanager do
  notemanager = described_class.new
  context 'when new notebook is created' do
    notebook = notemanager.create_notebook('bcde')
    it 'it\'s name is "bcde"' do
      expect(notebook.name).to be == 'bcde'
    end
    it 'it\'s id is ' + Base64.encode64('bcde') do
      expect(notebook.id).to be == Base64.encode64('bcde')
    end
    it 'notemanager.notebooks have key ' + Base64.encode64('bcde') do
      expect(notemanager.notebooks).to have_key(Base64.encode64('bcde'))
    end
  end

  context 'when notebook exists' do
    notemanager.create_notebook('cdef')
    it 'notebook?("aaaa") returns false' do
      expect(notemanager.notebook?('aaaa')).to be == false
    end
    it 'notebook?("cdef") returns true' do
      expect(notemanager.notebook?('cdef')).to be == true
    end
  end

  context 'when notebook is deleted' do
    notemanager.create_notebook('defi')
    notemanager.delete_notebook('defi')
    it 'notebook?("defi") returns false' do
      expect(notemanager.notebook?('defi')).to be == false
    end
  end

  context 'when notebook is created' do
    notebook = notemanager.create_notebook('efij')
    notebook = notemanager.create_notebook('fijk')
    it 'notebook.name returns "fijk"' do
      expect(notebook.name).to be == 'fijk'
    end
  end
  context 'when notebook is selected' do
    notemanager.create_notebook('efij')
    notemanager.create_notebook('fijk')
    notebook = notemanager.select_notebook('efij')
    it 'notebook.name returns "efij"' do
      expect(notebook.name).to be == 'efij'
    end
  end
end
