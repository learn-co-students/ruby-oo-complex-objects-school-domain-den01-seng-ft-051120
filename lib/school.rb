class School
   attr_accessor :school_name

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def roster
        @roster
    end

    def grade(number)
        @roster[number]
    end

    def add_student student_name, grade_level
        @student_name = student_name
        @grade_level = grade_level
        if @roster.include?(grade_level) == false
            @roster[grade_level] = []
        else
        end   
        @roster[grade_level] << student_name
    end

    def sort
        @roster.each do |grade_level, student_name| 
            @roster[grade_level] = student_name.sort
        end
    end
end
# code here!