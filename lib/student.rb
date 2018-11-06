require_relative "../config/environment.rb"

class Student

  attr_accessor :name, :id, :grade

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  def initialize(id = nil, name, grade)
    @grade = grade
    @id = id
    @name = name
  end


end
