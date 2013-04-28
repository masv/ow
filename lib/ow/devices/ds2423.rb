require "ow/device"
require "ow/parser"

module Ow
  module Devices
    class DS2423
      include Ow::Device
      include Ow::Parser

      element :Name,          as: :name
      element :Family,        as: :family
      element :ROMId,         as: :rom_id
      element :Health,        as: :health
      element :Channel,       as: :channel
      element :RawData,       as: :raw_data
      element :PrimaryValue,  as: :primary_value
      element :Counter_A,     as: :counter_a
      element :Counter_B,     as: :counter_b
    end
  end
end
