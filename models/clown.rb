class Clown

  attr_accessor :name, :skill, :fears, :age 

  @@all = []

  def initialize (name, age, skill, fears)
    @name = name
    @age = age
    @skill = skill
    @fears = fears
    self.class.all << self
  end

  def self.all
    @@all
  end

  def lie_about_age (new_age)
    self.age = new_age
  end
  
  def overcome_fears
    self.fears = nil
  end

  def say_hi
    "Hello my name is #{name}. I'm #{age} years old. I'm good at #{skill} and #{fears}"
  end

  def self.names
    self.all.collect do |individual_clown|
      individual_clown.name
    end
  end 

  def self.find_by_name(name)
    self.all.find{|clown| clown.name == name}
  end

  def self.oldest
    comparison_age = 0
    oldest_name = ''
    self.all.each do |individual_clown|
      if(individual_clown.age > comparison_age)
        comparison_age = individual_clown.age
        oldest_name = individual_clown.name
      end
    end
    self.all.find{|clown| clown.name == oldest_name}
  end 

  def self.fearless
    self.all.select do |individual_clown|
      individual_clown.fears == nil
    end
  end 
  
end # end of Clown class