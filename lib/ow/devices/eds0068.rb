require "ow/device"
require "ow/parser"

module Ow
  module Devices
    class EDS0068
      include Ow::Device
      include Ow::Parser

      element :Name,                  as: :name
      element :Family,                as: :family
      element :ROMId,                 as: :rom_id
      element :Health,                as: :health
      element :Channel,               as: :channel
      element :RawData,               as: :raw_data
      element :PrimaryValue,          as: :primary_value
      element :Temperature,           as: :temperature
      element :Humidity,              as: :humidity
      element :DewPoint,              as: :dew_point
      element :Humidex,               as: :humidex
      element :HeatIndex,             as: :heat_index
      element :BarometricPressureMb,  as: :barometric_pressure_mb
      element :BarometricPressureHg,  as: :barometric_pressure_hg
      element :Light,                 as: :light
    end
  end
end
