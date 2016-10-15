# note_spec.rb

require 'simplecov'
SimpleCov.start

require_relative '../note'

describe Note do
  context ': when first note is created' do
    note = described_class.new('My first note', '', '')
    it 'note.inspect is equal to certain string' do
      expect(note.inspect).to be == note.to_s[0...-1] +
                                    ' @id="TXkgZmlyc3Qgbm90ZQ==\n",' \
                                    ' @notebook="", @author="",' \
                                    ' @description="">'
    end
  end
  context 'when id was read' do
    note = described_class.new('My first note', '', '')
    it 'has id equal to the name encoded to base64' do
      expect(note.id).to be == "TXkgZmlyc3Qgbm90ZQ==\n"
    end
  end
  context 'when name was read' do
    note = described_class.new('My first note', '', '')
    it 'has name equal to "My first note"' do
      expect(note.name).to be == 'My first note'
    end
  end
  context 'when notebook was read' do
    note = described_class.new('My first note', '', '')
    it 'has number of notebook equal to ""' do
      expect(note.notebook).to eq('')
    end
  end
  context 'when author was read' do
    note = described_class.new('My first note', '', '')
    it 'has author\'s id equal to ""' do
      expect(note.author).to be == ''
    end
  end
  context 'when description was read' do
    note = described_class.new('My first note', '', '')
    it 'new description equals to ""' do
      expect(note.description).to be == ''
    end
  end

  context 'when description was changed' do
    note = described_class.new('My first note', '', '')
    note.description = 'New description'
    it 'new description equals to "New description"' do
      expect(note.description).to be == 'New description'
    end
  end
end
