# notebook_spec.rb

require 'simplecov'
SimpleCov.start

require_relative './note_spec'
require_relative '../notebook'
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

describe 'Notebook' do
  describe '#create_note' do
    context 'when note is created,' do
      notebook = Notebook.new('efij')
      it 'key ' + Notebook.encode('My note') + ' must be in @notes' do
        note = notebook.create_note('My note')
        expect(notebook.notes[Notebook.encode('My note')]).to be == note
      end
      it 'note? "My note" must be true' do
        expect(notebook.note?('My note')).to be == true
      end
      it 'note? "My note" must be false' do
        name = notebook.delete_note('My note')
        expect(notebook.note?('My note')).to be == false
        expect(name).to be == 'My note'
      end
    end
  end
end

