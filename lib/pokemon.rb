require 'pry'

class Pokemon
  
  attr_accessor :name, :type, :db
  
  #@@all = []
 
  def initialize(id:, name:, type:, db:, id=nil)
    @id = id
    @name = name
    @type = type
    @db = db
    #@@all << self
  end
 
  #def 
 
  def self.save(name, type)
    sql = "INSERT INTO pokemon (name, type) VALUES (?,?)"
    
    @db.execute(sql, self.name, self.type)
    
    @id = @db.execute("SELECT last_insert_rowid() from pokemon")[0][0]
  end
  
end
