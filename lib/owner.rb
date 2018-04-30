class Owner

attr_accessor :name, :pets
attr_reader :species


def initialize(species)
  @species = species

  @pets = {fishes: [], cats: [], dogs: []}
  end



def species(species)
  @species = species
end

def add_owner(owner)
  @all << owner
end


end
