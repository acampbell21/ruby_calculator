#Make sure all your requires are at the top
require 'pry'

@operators = ['+', '-', '*', '/']
@numbers = []

def menu
  puts 'Welcome to the ruby calculator!'
  puts '1)Solve a math problem'
  puts '2)Calculator History'
  puts '3)Exit the calculator'
  choice = gets.to_i
  menu_options(choice)
end

def menu_options(choice)
  case choice
  when 1
    solve_math_problem
  when 3
    puts 'You are exiting the calculator'
    exit
  end

end

#This block is responsible for solving the math problem
def math_problem
  # binding.pry
  case @numbers[1]
    when "+"
      puts @numbers[0] + @numbers[2]
    when "-"
      puts @numbers[0] - @numbers[2]
    when "*"
      puts @numbers[0] * @numbers[2]
    when "/"
      puts @numbers[0] / @numbers[2]
  end
end

# class String
#   def numeric?
#     Float(self) != nil rescue false
#   end
# end

def solve_math_problem
  puts 'What is your first number'
  first_number = gets.chomp
  if /\d+.?\d*/ =~ first_number
    @numbers << first_number.to_f
  else
    puts 'start over'
    solve_math_problem
  end
  puts 'What is your operator?'
  @operators.each do |o|
    puts o
  end
    @numbers << gets.chomp
  puts 'What is your second number' #prints out the [2] value in the array
  second_number = gets.chomp
  if /\d+.?\d*/ =~ second_number
    @numbers << second_number.to_f
  else
    puts 'start over'
    solve_math_problem
  end
  math_problem
  @numbers.clear
  menu
end



menu
