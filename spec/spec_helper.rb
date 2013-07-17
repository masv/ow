$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "minitest/autorun"
require 'rexml/document'

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  REXML::Document.new(File.open(fixture_path + "/" + file))
end
