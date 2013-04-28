require 'ow/parser'

module Ow
  module Device
    def self.included(base)
      types[base.name.split("::").last] = base
    end

    def self.types
      @types ||= {}
    end
  end
end
