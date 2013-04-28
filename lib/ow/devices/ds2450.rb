require "ow/device"
require "ow/parser"

module Ow
  module Devices
    class DS2450
      include Ow::Device
      include Ow::Parser

      element :Name,                          as: :name
      element :Family,                        as: :family
      element :ROMId,                         as: :rom_id
      element :Health,                        as: :health
      element :Channel,                       as: :channel
      element :RawData,                       as: :raw_data
      element :PrimaryValue,                  as: :primary_value
      element :ChannelAConversionValue,       as: :channel_a_conversion_value
      element :ChannelAConversionResolution,  as: :channel_a_conversion_resolution
      element :ChannelAConversionRange,       as: :channel_a_conversion_range
      element :ChannelAOutputEnable,          as: :channel_a_output_enable
      element :ChannelAOutputControl,         as: :channel_a_output_control
      element :ChannelBConversionValue,       as: :channel_b_conversion_value
      element :ChannelBConversionResolution,  as: :channel_b_conversion_resolution
      element :ChannelBConversionRange,       as: :channel_b_conversion_range
      element :ChannelBOutputEnable,          as: :channel_b_output_enable
      element :ChannelBOutputControl,         as: :channel_b_output_control
      element :ChannelCConversionValue,       as: :channel_c_conversion_value
      element :ChannelCConversionResolution,  as: :channel_c_conversion_resolution
      element :ChannelCConversionRange,       as: :channel_c_conversion_range
      element :ChannelCOutputEnable,          as: :channel_c_output_enable
      element :ChannelCOutputControl,         as: :channel_c_output_control
      element :ChannelDConversionValue,       as: :channel_d_conversion_value
      element :ChannelDConversionResolution,  as: :channel_d_conversion_resolution
      element :ChannelDConversionRange,       as: :channel_d_conversion_range
      element :ChannelDOutputEnable,          as: :channel_d_output_enable
      element :ChannelDOutputControl,         as: :channel_d_output_control
      element :PowerOnReset,                  as: :power_on_reset
      element :VCCControl,                    as: :vcc_control
    end
  end
end
