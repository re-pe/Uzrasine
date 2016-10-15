# notebook_spec.rb

require 'simplecov'
SimpleCov.start

require_relative 'note_spec'
require_relative '../notebook'
require 'base64'

describe Notebook do
  context 'when created new notebook' do
    notebook = described_class.new('abcd')
    it 'it\'s name is "abcd"' do
      expect(notebook.name).to be == 'abcd'
    end
    it 'it\'s id is ' + Base64.encode64('abcd') do
      expect(notebook.id).to be == Base64.encode64('abcd')
    end
  end

  context '- when note is created,' do
    notebook = described_class.new('abcd')
    note = notebook.create_note('My note')
    it 'key "' +
       described_class.encode('My note')[0...-1] +
       '\n" must be in @notes' do
      expect(notebook.notes[described_class.encode('My note')]).to be == note
    end
    it 'note? "My note" must be true' do
      expect(notebook.note?('My note')).to be == true
    end
  end

  context 'when note is deleted,' do
    notebook = described_class.new('abcd')
    notebook.create_note('My note')
    name = notebook.delete_note('My note')
    it 'name must be "My note"' do
      expect(name).to be == 'My note'
    end
    it 'note? "My note" must be false' do
      expect(notebook.note?(name)).to be == false
    end
  end
end
