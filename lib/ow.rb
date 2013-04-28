require 'ow/device'
require 'ow/devices/ds18b20'
require 'ow/parser'
require 'ow/server'
require 'ow/version'

require 'ox'

module Ow
  def self.parse_document(document)
    Ow::Server.from_document(document.root)
  end

  def self.parse_file(filename)
    document = Ox.load_file(filename)
    parse_document(document)
  end

  def self.parse(string)
    document = Ox.parse(string)
    parse_document(document)
  end
end
