
require 'pry'
class Building
    @@all = []
    
    attr_reader :adress, :number_of_floors
attr_accessor :name, :number_of_tenants

def initialize(name, adress, number_of_floors, number_of_tenants)
@name = name
@adress = adress
@number_of_floors = number_of_floors
@number_of_tenants = number_of_tenants
@@all << self
end
def self.all
    @@all
end

def placard
name_and_adress = []
    name_and_adress << @name
    name_and_adress << @adress
    name_and_adress
end

def avg_number_of_tenants
    total_tenants = @@all.reduce(0){|sum, building|
sum = sum + building.number_of_tenants
}
total_tenants / Building.all.count
end

def avg_tenants_per_floor
    total_tenants = @@all.reduce(0){|sum, building|
    sum = sum + building.number_of_tenants
    }
    total_tenants / self.number_of_floors
end

end
the_hub = Building.new("The hub", "street", 5, 100)
flatiron = Building.new("flatiron", "walnut", 7, 500)
