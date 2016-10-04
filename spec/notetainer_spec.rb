#notetainer_spec.rb

require 'simplecov'
SimpleCov.start

require './notebase_spec'
require './note_spec'
require './notebook_spec'
require './notetainer'
#require 'base64'

notetainer = Notetainer.new
describe 'notetainer#create_notebook' do
  notebook = notetainer.create_notebook('bcde')
  context 'when new notebook is created' do
    it 'it\'s name is "bcde"' do
      expect(notebook.name).to be == 'bcde' 
    end
    it 'it\'s id is ' + Base64.encode64('bcde') do
      expect(notebook.id).to be == Base64.encode64('bcde') 
    end
    it 'notetainer.notebooks have key ' + Base64.encode64('bcde') do
      expect(notetainer.notebooks).to have_key(Base64.encode64('bcde')) 
    end
  end
end

describe 'notetainer#notebook?' do
  notebook = notetainer.create_notebook('cdef')
  context 'when notebook exists' do
    it 'notebook?("aaaa") returns false' do
      expect(notetainer.notebook?('aaaa')).to be == false 
    end
    it 'notebook?("cdef") returns true' do
      expect(notetainer.notebook?('cdef')).to be == true 
    end
  end
end

describe 'notetainer#delete_notebook' do
  notebook = notetainer.create_notebook('defi')
  notetainer.delete_notebook('defi')
  context 'when notebook is deleted' do
    it 'notebook?("defi") returns false' do
      expect(notetainer.notebook?('defi')).to be == false 
    end
  end
end

describe 'notetainer#select_notebook' do
  context 'when notebook is created' do
    notebook = notetainer.create_notebook('efij')
    notebook = notetainer.create_notebook('fijk')
    it 'notebook.name returns "fijk"' do
      expect(notebook.name).to be == 'fijk' 
    end
  end
  context 'when notebook is selected' do
    notebook = notetainer.select_notebook('efij')
    it 'notebook.name returns "efij"' do
      expect(notebook.name).to be == 'efij' 
    end
  end
end