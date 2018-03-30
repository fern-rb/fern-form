require 'fern/form/dsl'

module Fern
  module Form
    extend ActiveSupport::Concern
    attr_reader :form

    included do
      before_action { build_form if fern[action_name.to_sym].key?(:form) }

      def build_form
        form = fern[action_name.to_sym][:form]

        p = extract_params(params, form)
        p = symbolize_keys(p)

        @form = form[:klass].new(p)
      end

      def extract_params(params, form)
        p = params

        p = params[form[:key]] if form.key?(:key)
        p = p.permit! if p.respond_to?(:permit!)

        p
      end

      def symbolize_keys(form_params)
        form_params&.to_hash&.deep_symbolize_keys
      end
    end
  end
end
