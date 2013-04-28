module Ow
  module Parser
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def element(name, options = {})
        accessor_name = options.fetch(:as) { name }

        @element_mapping ||= Hash.new
        @element_mapping[name.to_s] = accessor_name

        define_method(accessor_name.to_sym) do
          instance_variable_get("@#{accessor_name}")
        end

        define_method("#{accessor_name}=".to_sym) do |value|
          instance_variable_set("@#{accessor_name}", value)
        end
      end

      def element_mapping
        @element_mapping
      end

      def from_document(document)
        obj = new

        element_mapping.each do |element_name, accessor|
          value = document.locate(element_name)[0].nodes[0]
          obj.send("#{accessor}=", value)
        end

        obj
      end
    end
  end
end
