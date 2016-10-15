# notebase_spec.rb

require 'simplecov'
SimpleCov.start

require './notebase'

describe 'Notebase' do
  notebase = Notebase.new
  context 'when notebase created' do
    it 'has no id' do
      expect(notebase.id).to be_nil
    end
    it 'has no description' do
      expect(notebase.description).to be_nil
    end
  end
end

describe 'Notebase#name' do
  notebase = Notebase.new
  notebase.name = 'New name'
  context 'when name is assigned' do
    it 'name has value' do
      expect(notebase.name).to be == 'New name'
    end
    it 'id has value' do
      expect(notebase.id).to be == "TmV3IG5hbWU=\n"
    end
  end
end

describe 'Notebase#description' do
  notebase = Notebase.new
  notebase.description = 'New description'
  context 'when name is assigned' do
    it 'description has value' do
      expect(notebase.description).to be == 'New description'
    end
  end
end

describe 'Notebase.encode' do
  context 'when string is encoded' do
    it 'it returns value' do
      expect(Notebase.encode("abc")).to be == "YWJj\n"
    end
  end
end

describe 'Notebase.decode' do
  context 'when string is decoded' do
    it 'it returns value' do
      expect(Notebase.decode("YWJj\n")).to be == "abc"
    end
  end
end
