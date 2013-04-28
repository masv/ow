require_relative './spec_helper'
require 'ow'

describe Ow do
  describe ".parse_document" do
    it "returns a new server" do
      document = fixture('full.xml')
      server = Ow.parse_document(document)
      server.must_be_instance_of Ow::Server
    end
  end

  describe ".parse_file" do
    it "returns a new server" do
      filename = fixture_path + '/full.xml'
      server = Ow.parse_file(filename)
      server.must_be_instance_of Ow::Server
    end
  end

  describe ".parse" do
    it "returns a new server" do
      string = File.read(fixture_path + '/full.xml')
      server = Ow.parse(string)
      server.must_be_instance_of Ow::Server
    end
  end
end
