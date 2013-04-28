require "ow/device"
require "ow/parser"

module Ow
  module Devices
    class DS18B20
      include Ow::Device
      include Ow::Parser

      element :Name,          as: :name
      element :Family,        as: :family
      element :ROMId,         as: :rom_id
      element :Health,        as: :health
      element :Channel,       as: :channel
      element :RawData,       as: :raw_data
      element :PrimaryValue,  as: :primary_value
      element :Temperature,   as: :temperature
      element :UserByte1,     as: :user_byte_1
      element :UserByte2,     as: :user_byte_2
      element :Resolution,    as: :resolution
      element :PowerSource,   as: :power_source
    end
  end
end
