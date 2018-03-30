require 'fern/api'

module Fern
  module Form
    module Dsl
      def self.included(receiver)
        receiver.extend(ClassMethods)
      end

      module ClassMethods
      end
      def form(klass, key = nil)
        @controller.fern[@name][:form] = {
          key: key,
          klass: klass
        }
      end
    end
  end
end

Fern::Api::Endpoint.class_eval { include Fern::Form::Dsl }
