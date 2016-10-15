#notemanager_spec.rb

require 'simplecov'
SimpleCov.start

require_relative './notebase_spec'
require_relative './note_spec'
require_relative './notebook_spec'
require_relative '../notemanager'
#require 'base64'

notemanager = Notemanager.new
describe 'notemanager#create_notebook' do
  notebook = notemanager.create_notebook('bcde')
  context 'when new notebook is created' do
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
end

describe 'notemanager#notebook?' do
  notebook = notemanager.create_notebook('cdef')
  context 'when notebook exists' do
    it 'notebook?("aaaa") returns false' do
      expect(notemanager.notebook?('aaaa')).to be == false 
    end
    it 'notebook?("cdef") returns true' do
      expect(notemanager.notebook?('cdef')).to be == true 
    end
  end
end

describe 'notemanager#delete_notebook' do
  notebook = notemanager.create_notebook('defi')
  notemanager.delete_notebook('defi')
  context 'when notebook is deleted' do
    it 'notebook?("defi") returns false' do
      expect(notemanager.notebook?('defi')).to be == false 
    end
  end
end

describe 'notemanager#select_notebook' do
  context 'when notebook is created' do
    notebook = notemanager.create_notebook('efij')
    notebook = notemanager.create_notebook('fijk')
    it 'notebook.name returns "fijk"' do
      expect(notebook.name).to be == 'fijk' 
    end
  end
  context 'when notebook is selected' do
    notebook = notemanager.select_notebook('efij')
    it 'notebook.name returns "efij"' do
      expect(notebook.name).to be == 'efij' 
    end
  end
end