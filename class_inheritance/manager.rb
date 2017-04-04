require_relative 'employee'

class Manager < Employee
  def initialize(name, title, salary, boss, employees = [])
    super(name, title, salary, boss)
    @employees = employees
  end

  def bonus_multiplier(multiplier)
    total_salaries = 0

    @employees.each do |employee|
      total_salaries += employee.salary
    end

    total_salaries * multiplier
  end

end

if __FILE__ == $PROGRAM_NAME
  david = Employee.new("David", "TA", 10000, "Darren")
  shawna = Employee.new("Shawna", "TA", 12000, "Darren")
  employees1 = [david, shawna]
  darren = Manager.new("Darren", "TA Manager", 78000, "Ned", employees1)
  employees2 = [david, shawna, darren]


  ned = Manager.new("Ned", "Founder", 1000000, nil, employees2)

  p ned.bonus_multiplier(5) # => 500_000
  p darren.bonus_multiplier(4) # => 88_000
  p david.bonus_multiplier(3) # => 30_000
end
