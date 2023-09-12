require "./employee"

class Manager < Employee
    attr_reader :employees

    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end

    def add_subordinate(employee)
        @employees << employee
    end

    def bonus(multiplier)
        queue = [*@employees]
        total_salaries = 0

        until queue.empty?
            current_emp = queue.shift
            total_salaries += current_emp.salary
            if current_emp.is_a?(Manager)
                current_emp.employees.each { |employee| queue << employee}
            end
        end

        total_salaries * multiplier
    end
end
