# frozen_string_literal: true

module ClassVariants
  module Component
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def class_variants
        @class_variants ||= Instance.new
      end

      def inherited(subclass)
        super
        subclass.instance_variable_set(:@class_variants, class_variants.dup)
      end

      def base(...)
        class_variants.send(:base, ...)
      end

      def variant(...)
        class_variants.send(:variant, ...)
      end

      def defaults(...)
        class_variants.send(:defaults, ...)
      end

      def classes(...)
        class_variants.render(...)
      end
    end
  end
end
