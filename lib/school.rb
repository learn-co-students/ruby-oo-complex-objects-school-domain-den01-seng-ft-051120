require 'pry'

class School 
    
    def initialize roster, student = [], grade_level = 0
        @roster = {}
        @student = student 
        @grade_level = grade_level
    end

    attr_accessor :roster, :student, :grade_level

    
    
    def add_student student, grade_level
        
        if !@roster.has_key?(grade_level)
            @roster[grade_level] = []
        end
        @roster[grade_level] << student

    end

    def grade grade_level
        @roster[grade_level]
    end

    def sort
        @roster.each_value do |sorted_roster|
            sorted_roster.sort!
        end
        @roster
        # binding.pry
    end


end
