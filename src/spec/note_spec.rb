# note_spec.rb

require 'simplecov'
SimpleCov.start

require_relative '../note'

describe 'Note:' do
  note = Note.new('My first note', '', '')
  describe '#initialize' do
    context 'when first note is created' do
      it 'note.inspect is equal to certain string' do
        expect(note.inspect).to be == note.to_s[0...-1] + 
          ' @id="TXkgZmlyc3Qgbm90ZQ==\n", @notebook="", @author="", @description="">'
      end
    end
  end
  describe '#id' do
    context 'when id was read' do
      it 'has id equal to the name encoded to base64' do
        expect(note.id).to be == "TXkgZmlyc3Qgbm90ZQ==\n"
      end
    end
  end
  describe '#name' do
    context 'when name was read' do
      it 'has name equal to "My first note"' do
        expect(note.name).to be == 'My first note'
      end
    end
  end
  describe '#notebook' do
    context 'when notebook was read' do
      it 'has number of notebook equal to ""' do
        expect(note.notebook).to eq("")
      end
    end
  end
  describe '#author' do
    context 'when author was read' do
      it 'has author\'s id equal to ""' do
        expect(note.author).to be == ""
      end
    end
  end
  describe '#description' do
    context 'when description was read' do
      it 'new description equals to ""' do
        expect(note.description).to be == ''
      end
    end
  end
end

describe 'Note#description=' do
  note = Note.new('My first note', '', '')
  note.description = 'New description'
  context 'when description was changed' do
    it 'new description equals to "New description"' do
      expect(note.description).to be == 'New description'
    end
  end
end

