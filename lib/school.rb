# code here!
require 'pry'
class School 
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end 

    def add_student(student, grade)
        if roster.has_key?(grade)
            @roster[grade] << student
        else
            @roster[grade] = []
            @roster[grade] << student 
        end 
    end 

    def grade(grade)
        self.roster[grade]
    end 

    def sort
        self.roster.select { |grade, students| students.sort! }
    end


end 



