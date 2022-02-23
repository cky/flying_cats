require_relative "cat"

module FlyingCats
  module RedBull
    refine Cat do
      def wings?
        true
      end
    end
  end
end
