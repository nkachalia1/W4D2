class Manager < Employee

    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
