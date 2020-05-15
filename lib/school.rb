class School

    attr_accessor :roster 

    def initialize name
        @name = name 
        @roster = {}
    end 

    def add_student name, grade
        @roster[grade] ?
            @roster[grade] << name : @roster[grade] = [name]
    end 

    def grade grade 
        @roster[grade]
    end 

    def sort 
        @roster.reduce({}) do |roster, (grade, students)|
           roster[grade] = students.sort
           roster
        end  
    end 

end 