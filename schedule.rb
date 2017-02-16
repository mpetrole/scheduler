class Employee
  attr_accessor :name, :level, :shift
  
  def initialize(name, level, shift)
    @name = name
    @level = level
    @shift = shift
  end
  
  def write(name, level, shift, days)
    File.open("employees.txt", 'a') do |f|
      f.puts "#{@name}, #{@level}, #{@shift}, #{days}"
    end
  end
  
  def self.read()
    array = File.read("employees.txt").split(",").map(&:strip)
    return array
  end
end


def add()
puts "Employee Name? (First Last)"
name = gets.chomp
puts "Employee Level?(1 for analyst or 2 for IH)"
level = gets.chomp
puts "Employee Shift? (1, 2, or 3)"
shift = gets.chomp
employee = Employee.new(name, level, shift)
puts "#{name}, level #{level}, on shift #{shift} - is this correct? [y/n]"
option = gets.chomp
if option == "y"
  employee.write(name, level, shift)
else
  puts "Canceling..."
end
end

def days(days)
  
end

def list()
  employee = Employee.read
  print employee.to_s + "\r"
  wait = gets.chomp
end

def schedule
  roles = Array.new("Soc Box", "Backlog", "Float", "Pending Cases", "Cross Checks", "Live Dash", "Contactor")
  
end

puts "Scheduler v.01 by Matt Petrole"
continue = 1
while continue == 1
puts "What would you like to do?"
puts "Options are 'add' to add a new employee, 'list' to list employees, 'quit' to exit"
choice = gets.chomp
case choice
when "add"
  add()
when "list"
  list()
when "quit"
  continue = 0
else
  puts "I don't recognize that command"
end
end