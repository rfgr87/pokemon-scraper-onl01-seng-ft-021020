
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
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES (?,?)", name, type)
  end
  
  def self.find(id_number, db)
    pokemon_find = db.execute("SELECT * FROM pokemon WHERE id=?", id_number).first
    Pokemon.new(id: pokemon_find[0], name: pokemon_find[1], type: pokemon_find[2], hp: pokemon_find[3], db: db )
  end

  def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", new_hp, self.id)
  end
  
end
