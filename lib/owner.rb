class Owner

attr_accessor :name, :pets
attr_reader :species


def initialize(species)
  @species = species
  @pets = {fishes: [], cats: [], dogs: []}
  end



def species
  @species << species.new
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
  pets[:fish] << Fish.new(name)
end

end
