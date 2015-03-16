class SuperHero
  module SuperPower
    def super_power!
      puts "#{self.class.name} has super-power!"
    end

    def super_power?
      true
    end
  end

  module HeatVision
    def heat_vision!
      puts "#{self.class.name} has heat vision"
    end

    def heat_vision?
      true
    end
  end

  module Fly
    def fly!
      puts "#{self.class.name} fly!"
    end

    def fly?
      true
    end
  end

  module Money
    def money!
      puts "#{self.class.name} has lot of money"
    end

    def money?
      true
    end
  end
end

class SuperMan < SuperHero
  include SuperPower
  include HeatVision
  include Fly
end

class IronMan < SuperHero
  include Money
  include Fly
end

class Batman < SuperHero
  include Money
end

superman = SuperMan.new
batman = Batman.new
superman.fly!
