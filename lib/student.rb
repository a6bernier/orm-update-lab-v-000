require_relative "../config/environment.rb"

class Student

  attr_accessor :name, :id, :grade

  def initialize(id = nil, name, grade)
    @grade = grade
    @id = id
    @name = name
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade INTEGER
      )
      SQL
    DB[:conn].execute(sql)
  end


end
