# Create a game class
class Game
  attr_accessor :name, :year, :system

  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
  end

  def to_s
    self.name
  end

  def description
    # Using self, it's possible get the last return,
    # returning to_s in the case
    "#{self}, #{self.year} - #{self.system}"
  end
end

game = Game.new("GTA", year: 2013, system: "PS3")
puts game.description
