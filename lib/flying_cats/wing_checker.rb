require_relative "cat"
require_relative "red_bull"

module FlyingCats
  module WingChecker
    class << self
      def can_fly_without_red_bull?(cat)
        cat.wings?
      end

      def can_indirectly_fly_without_red_bull?(cat)
        cat.send(:wings?)
      end

      def can_reflectively_fly_without_red_bull?(cat)
        Cat.instance_method(:wings?).bind_call(cat)
      end

      using RedBull

      def can_fly_with_red_bull?(cat)
        cat.wings?
      end

      def can_indirectly_fly_with_red_bull?(cat)
        cat.send(:wings?)
      end

      def can_reflectively_fly_with_red_bull?(cat)
        Cat.instance_method(:wings?).bind_call(cat)
      end
    end
  end
end
