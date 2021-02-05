# Add your code here
require 'pry'

class Dog

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def save
        @@all << self
    end

    def self.all
       @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        doggies = @@all.find { |doggy| puts doggy.name }
    end

end

snoopy = Dog.new("Snoopy")