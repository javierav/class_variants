# frozen_string_literal: true

module ClassVariants
  module ActionView
    module Helpers
      def class_variants(...)
        ClassVariants::Instance.new(...)
      end

      def cv(name, ...)
        ClassVariants.for(name).render(...)
      end
    end
  end
end
