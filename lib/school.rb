require 'pry'
class School
    attr_reader :roster

    def initialize name
        @name = name
        @roster = {}
    end

    def add_student student_name_value, student_grade_key
        if @roster[student_grade_key] == nil
            @roster[student_grade_key] = []
        end
        @roster[student_grade_key] << student_name_value
    end

    def grade grade_search
        @roster.select do |grade, student_array|
            return student_array if grade == grade_search
        end
    end

    def sort
        @roster.each do |grade, student_array|
            student_array.sort!
        end
    end

end
