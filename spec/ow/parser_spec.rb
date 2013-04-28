require_relative "../spec_helper"
require "ow/parser"

class ParserTest
  include Ow::Parser

  element :AnElement
  element :AnotherElement, as: :another_element
end

describe Ow::Parser do
  describe ".element" do
    it "defines reader for element value" do
      ParserTest.new.must_respond_to :AnElement
    end

    it "defines reader for element value with custom name" do
      ParserTest.new.must_respond_to :another_element
    end

    it "defines writer for element value" do
      ParserTest.new.must_respond_to :AnElement=
    end

    it "defines writer for element value with custom name" do
      ParserTest.new.must_respond_to :another_element=
    end
  end

  describe ".element_mapping" do
    it "returns a hash map of defined elements and accessors" do
      ParserTest.element_mapping.must_equal({
        "AnElement" => :AnElement,
        "AnotherElement" => :another_element
      })
    end
  end

  describe ".from_document" do
    let(:document) { fixture("parser_test.xml").root }

    it "returns an object with values set" do
      parsed = ParserTest.from_document(document)
      parsed.AnElement.must_equal "Cookies!"
    end
  end
end
