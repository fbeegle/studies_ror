class Band
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

bands = [
  Band.new("Red Hot"),
  Band.new("Coldplay"),
  Band.new("Maroon 5")
]

names = bands.map(&:name)

# equivalent to
names = bands.map {|band| band.name}

# eqivalent to
names = []
for band in bands
  names << band.name
end

p names
