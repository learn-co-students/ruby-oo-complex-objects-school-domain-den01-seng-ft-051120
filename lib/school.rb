require "pry"
class School

    attr_reader :name
    attr_accessor :roster, :grade


    def initialize name
        @roster = {}

    end

    def add_student name, grade
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade grade
        @roster[grade]
    end

    def sort

        @roster.map do |key, value|
           @roster[key] = value.sort
        end

        sorted = @roster.sort.to_h
    end
end