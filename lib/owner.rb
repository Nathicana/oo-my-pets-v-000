class Owner

OWNERS = []
attr_accessor :name, :pets
attr_reader :species

def self.all
  OWNERS
end

def self.count
  OWNERS.size
end

def initialize(species)
  @species = species
  OWNERS << self
  @pets = {:fishes=> [], :cats=> [], :dogs=> []}
end


def add_owner(owner)
  @all << owner
end

def buy_cat(name)
  pets[:cats] << Cat.new(name)
end

def buy_dog(name)
  pets[:dogs] << Dog.new(name)
end

def buy_fish(name)
  pets[:fishes] << Fish.new(name)
end

def say_species
  puts "I am a #{species}."
end

end
