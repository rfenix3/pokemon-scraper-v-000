require 'pry'

class Pokemon
  
  attr_accessor :name, :type
  
  @@all = []
 
  def initialize(name, type, id=nil)
    @id = id
    @name = name
    @type = type
    @@all << self
  end
 
  def self.all
    @@all
  end
 
  def self.save(name, type)
    sql = "INSERT INTO pokemon (name, type) VALUES (?,?)"
    @db.execute("INSERT INTO pokemon (name, type) VALUES (?,?", self.name, self.type)
  end
  
end
