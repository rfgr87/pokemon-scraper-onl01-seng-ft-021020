
DB = {:conn => SQLite3::Database.new("db/pokemon.db")}

class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name 
    @type = type
    @db = db
  end
  
  def self.save
    db.execute("INSERT INTO pokemon(name, type) VALUES (?,?)", name, type)
  end
end
