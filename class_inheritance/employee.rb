class Employee
  attr_reader :salary

  def initialize(name, title, salary, boss)
    @name, @title, @salary, @boss = name, title, salary, boss
  end

  def bonus_multiplier(multiplier)
    @salary * multiplier
  end
end
