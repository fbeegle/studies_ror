# Listing just the girls exercise

# Creating a Recruit Class:
class Recruit
  attr_reader :name, :gender

  def initialize(name, gender)
    @name = name
    @gender = gender
  end
end

# Instantiating in recruits Array:
recruits = [
  Recruit.new("John", "male"),
  Recruit.new("Paul", "male"),
  Recruit.new("Mary", "female"),
  Recruit.new("Jake", "male"),
  Recruit.new("Bob", "male"),
  Recruit.new("Eleonor", "female"),
  Recruit.new("Caroline", "female")
]

# Selecting the girls and transforming the
# output in a HTML List:
name = recruits
        .select {|recruit| recruit.gender == "female"}
        .map {|obj| %[<li>#{obj.name}</li>]}
        .join("\n")

# Output:
puts name
