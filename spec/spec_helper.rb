$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "minitest/autorun"
require "ox"

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  Ox.load_file(fixture_path + "/" + file)
end
