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
    
    @db.execute(sql, self.name, self.type)
    
    @id = @db.execute("SELECT ")
  end
  
end
