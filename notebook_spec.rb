# notebook_spec.rb

require 'simplecov'
SimpleCov.start

require './note_spec'
require './notebook'
require 'base64'

describe 'Notebook#initialize' do
  notebook = Notebook.new('abcd')
  context 'when created new notebook' do
    it 'it\'s name is "abcd"' do
      expect(notebook.name).to be == 'abcd' 
    end
    it 'it\'s id is ' + Base64.encode64('abcd') do
      expect(notebook.id).to be == Base64.encode64('abcd') 
    end
  end
end
=begin  
describe 'Notebook.create' do
  notebook = Notebook.create('bcde')
  context 'when new notebook is created' do
    it 'it\'s name is "bcde"' do
      expect(notebook.name).to be == 'bcde' 
    end
    it 'it\'s id is ' + Base64.encode64('bcde') do
      expect(notebook.id).to be == Base64.encode64('bcde') 
    end
    it 'Notebook.instances have key ' + Base64.encode64('bcde') do
      expect(Notebook.instances).to have_key(Base64.encode64('bcde')) 
    end
  end
end

describe 'Notebook.notebook?' do
  notebook = Notebook.create('bcde')
  context 'when notebook exists' do
    it '.notebook?("bcde") returns true' do
      expect(Notebook.notebook?('bcde')).to be == true 
    end
    it '.notebook?("cdef") returns true' do
      expect(Notebook.notebook?('cdef')).to be == false 
    end
  end
end

describe 'Notebook.delete' do
  notebook = Notebook.create('defi')
  Notebook.delete('defi')
  context 'when notebook is deleted' do
    it '.notebook?("defi") returns false' do
      expect(Notebook.notebook?('defi')).to be == false 
    end
  end
end
=end
describe 'Notebook' do
  notebook = Notebook.new('efij')
  describe '#create_note' do
    context 'when note is created' do
      it 'key ' + Notebook.encode('My note') + ' must be in @notes' do
        note = notebook.create_note('My note')
        expect(notebook.notes[Notebook.encode('My note')]).to be == note
      end
    end
  end
  
  describe '#note?' do
    context 'when note is created' do
      it '.notes? must be true' do
        expect(notebook.note?('My note')).to be == true
      end
    end
  end

  describe '#delete_note' do
    context 'when note is deleted' do
      it '.notes? must be false' do
        name = notebook.delete_note('My note')
        expect(notebook.note?('My note')).to be == false
        expect(name).to be == 'My note'
      end
    end
  end
end

