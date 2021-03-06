module Dominion
  class Victory < Card
    def <=>(other)
      if other.is_a? Victory
        points <=> other.points
      else
        1
      end
    end
  end
end

require 'dominion/victory/duchy'
require 'dominion/victory/estate'
require 'dominion/victory/gardens'
require 'dominion/victory/province'