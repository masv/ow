require_relative "../spec_helper"
require "ow/device"

class DSTEST1
  include Ow::Device
end

module TestDevices
  class DSTEST2
    include Ow::Device
  end
end

describe Ow::Device do
  describe ".types" do
    it "returns known device types" do
      Ow::Device.types["DSTEST1"].must_equal DSTEST1
      Ow::Device.types["DSTEST2"].must_equal TestDevices::DSTEST2
    end
  end
end
