Dir[File.join(File.dirname(__FILE__), 'ow', 'devices', '*.rb')].each { |file| require file }

require 'ow/device'
require 'ow/parser'
require 'ow/server'
require 'ow/version'

require 'rexml/document'

module Ow
  def self.parse_document(document)
    Ow::Server.from_document(document.root)
  end

  def self.parse_file(filename)
    document = REXML::Document.new(File.open(filename))
    parse_document(document)
  end

  def self.parse(string)
    document = REXML::Document.new(string)
    parse_document(document)
  end
end
