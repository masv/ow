require_relative '../spec_helper'
require 'ow/server'

describe Ow::Server do
  describe ".from_document" do
    let(:document) { fixture("server.xml").root }

    it "returns a new server with parsed elements" do
      server = Ow::Server.from_document(document)
      server.host_name.must_equal "OWSERVER1"
    end
  end
end
