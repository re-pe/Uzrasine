# notebase.rb

require 'base64'

# This is base class
class Notebase
  attr_reader :id, :description

  def self.encode(arg)
    Base64.encode64(arg)
  end

  def self.decode(arg)
    Base64.decode64(arg)
  end

  def name
    Notebase.decode(id)
  end

  def name=(arg)
    @id = Notebase.encode(arg)
  end

  def description=(new_descr)
    @description = new_descr unless new_descr.empty?
  end
end
