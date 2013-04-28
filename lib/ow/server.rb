require 'ow/parser'

module Ow
  class Server
    include Ow::Parser

    element :PollCount,                 as: :poll_count
    element :DevicesConnected,          as: :devices_connected
    element :LoopTime,                  as: :loop_time
    element :DevicesConnectedChannel1,  as: :devices_connected_channel_1
    element :DevicesConnectedChannel2,  as: :devices_connected_channel_2
    element :DevicesConnectedChannel3,  as: :devices_connected_channel_3
    element :DataErrorsChannel1,        as: :data_errors_channel_1
    element :DataErrorsChannel2,        as: :data_errors_channel_2
    element :DataErrorsChannel3,        as: :data_errors_channel_3
    element :VoltageChannel1,           as: :voltage_channel_1
    element :VoltageChannel2,           as: :voltage_channel_2
    element :VoltageChannel3,           as: :voltage_channel_3
    element :VoltagePower,              as: :voltage_power
    element :DeviceName,                as: :device_name
    element :HostName,                  as: :host_name
    element :MACAddress,                as: :mac_address

    attr_accessor :devices

    def initialize
      @devices = Array.new
    end

    def self.from_document(document)
      server = super

      Ow::Device.types.each do |name, device_class|
        document.locate("owd_#{name}").map do |device_node|
          server.devices << device_class.from_document(device_node)
        end
      end

      server
    end
  end
end
