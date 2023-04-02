# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
require 'pry'
class Unicorn
    attr_reader :name, :color
    def initialize (name, color = "silver")
        @name = name
        @color = color
    end
    def say(string)
        "*~*#{string}*~*"
    end
end

unicorn1 = Unicorn.new("sally")
p unicorn1.name
p unicorn1.color

p unicorn1.say("silly rabbit, unicorns are for kids!")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    attr_reader :name, :pet, :thirsty
    def initialize (name, pet = "bat", thirsty = true)
        @name = name
        @pet = pet
        @thirsty = thirsty
    end
    def drink
        @thirsty = false
    end
end

vampire1 = Vampire.new("Vlad")
p 'vampire'
p vampire1.name
p vampire1.pet
p vampire1.thirsty

p vampire1.drink
p vampire1.thirsty

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :name, :rider, :color, :hungry, :stomach_level
    def initialize (name, rider, color, hungry = true, stomach_level = 0)
        @name = name
        @rider = rider
        @color = color
        @hungry = hungry
        @stomach_level = stomach_level
    end
    def eat
        @stomach_level += 1
        if @stomach_level >= 4
            @hungry = false
        end
    end
end

dragon1 = Dragon.new("Sam", "Jon", "blue")
p 'dragon'
p dragon1.hungry

dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat
p dragon1.hungry

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age, :adult, :old, :has_ring
    def initialize (name, disposition, age = 0, adult = false, old = false, has_ring = false)
        @name = name
        @disposition = disposition
        @age = age
        @adult = adult
        @old = old
        @has_ring = has_ring
    end
    
    def celebrate_birthday
        @age += 1
        if @age >= 33 
            @adult = true
        end
        if @age >= 101
            @old = true
        end
    end

    def has_ring
        if @name == "Frodo" 
            @has_ring = true
        end
    end
end

hobbit1 = Hobbit.new("Fredi", "sad")
p "hobbit"
p hobbit1.name
p hobbit1.disposition

p hobbit1.adult

33.times do 
    hobbit1.celebrate_birthday
end
p hobbit1.adult

p hobbit1.age
80.times do 
    hobbit1.celebrate_birthday
end
p hobbit1.age
p hobbit1.old
