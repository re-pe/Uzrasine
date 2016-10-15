# notebase_spec.rb

require 'simplecov'
SimpleCov.start

require_relative '../notebase'

describe Notebase do
  context 'when notebase created' do
    notebase = Notebase.new
    it 'has no id' do
      expect(notebase.id).to be_nil
    end
    it 'has no description' do
      expect(notebase.description).to be_nil
    end
  end
  context 'when name is assigned' do
    notebase = Notebase.new
    notebase.name = 'New name'
    it 'name has value' do
      expect(notebase.name).to be == 'New name'
    end
    it 'id has value' do
      expect(notebase.id).to be == "TmV3IG5hbWU=\n"
    end
  end
  context 'when description is assgned' do
    notebase = Notebase.new
    notebase.description = 'New description'
    it 'description has value' do
      expect(notebase.description).to be == 'New description'
    end
  end
  context 'when string is encoded' do
    it 'it returns value' do
      expect(Notebase.encode("abc")).to be == "YWJj\n"
    end
  end
  context 'when string is decoded' do
    it 'it returns value' do
      expect(Notebase.decode("YWJj\n")).to be == "abc"
    end
  end
end