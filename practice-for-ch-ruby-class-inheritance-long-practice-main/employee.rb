class Employee

    def initialize(name, title, salary, *boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss.first
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
        bonus # are we returning bonus?
    end
