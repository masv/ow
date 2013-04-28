# Ow

A Ruby parser for OW-SERVER XML files.

## Installation

Add this line to your application's Gemfile:

    gem 'ow'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ow

## Usage

    require 'ow'

    # Parse XML from file
    server = Ow.parse_file('file.xml')

    # Parse XML from string
    server = Ow.parse("<?xml (...)")

    server
    => #<Ow::Server:0x007fa1141c1648>

    server.devices
    => [#<Ow::Devices::DS18B20:0x007fa1141b4c90,
      #<Ow::Devices::DS2423:0x007fa1141a5ee8]

    server.devices.first.temperature
    => "6.1875"

## To do

### Device definions

* Default conversion for element names (automatically convert to
  snake-case).
* Type coercion for elements (temperatures should be float, not string,
  etc.)
* Move common fields (Name, ROMId, etc.) to the Device module to avoid
  duplication.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
