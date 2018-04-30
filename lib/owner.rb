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

def self.reset_all
  OWNERS.clear
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
  "I am a #{species}."
end

def walk_dogs
  pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end
end
