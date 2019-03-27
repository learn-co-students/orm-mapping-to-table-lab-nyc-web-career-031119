class Student
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  attr_reader :id
  attr_accessor :name

  def initialize(name, grade, id = nil)
    @id = id
    @name = name
    @grade = grade
  end

  def self.create_table
    sql =
     <<-SQL
      CREATE TABLE IF NOT EXISTS songs
      (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
      )
      SQL
      DB[:conn].execute(sql)
  end

end
