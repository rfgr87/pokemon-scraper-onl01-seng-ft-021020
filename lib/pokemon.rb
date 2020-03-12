
DB = {:conn => SQLite3::Database.new("db/pokemon.db")}

class Pokemon
  attr_accessor :name, :type
  attr_reader :id
  
  def initialize(id=nil, name, type)
    @id = id
    @name = name 
    @type = type
  end
  
  def self.save
    def self.save
    sql = <<-SQL
      INSERT INTO students (name, grade) 
      VALUES (?, ?)
    SQL

    DB[:conn].execute(sql, self.name, self.grade)
  end
end
