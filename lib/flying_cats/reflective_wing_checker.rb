require_relative "cat"
require_relative "red_bull"

module FlyingCats
  class ReflectiveWingChecker
    attr_reader :wings_method_without_red_bull, :wings_method_with_red_bull

    def initialize(cat)
      @wings_method_without_red_bull = ReflectionHelper.wings_method_without_red_bull.bind(cat)
      @wings_method_with_red_bull = ReflectionHelper.wings_method_with_red_bull.bind(cat)
    end

    def can_fly_without_red_bull?
      wings_method_without_red_bull.call
    end

    def can_fly_with_red_bull?
      wings_method_with_red_bull.call
    end

    module ReflectionHelper
      def self.wings_method_without_red_bull
        Cat.instance_method(:wings?)
      end

      using RedBull

      def self.wings_method_with_red_bull
        Cat.instance_method(:wings?)
      end
    end
  end
end
