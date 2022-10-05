def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "What would you like to do?"
    puts "1. Input students"
    puts "2. Show students"
    puts "9. Exit"
    # 2. read the input and save it into a variable
    menu_input = gets.chomp
    # 3. do what the user has asked
    case menu_input
      when "1"
        students = input_students
      when "2"
        print_header
        print(students)
        print_footer(students)
      when "9"
        exit
      else
        puts "Invalid input. Please enter a number."
    end
    # 4. repeat from step 1
  end
end

def input_students
  puts "Enter the names of the students"
  puts "Hit return twice to finish"
  # Creates empty array for list
  students = []
  # Get first student name
  name = gets.chomp
  # While name is not empty, repeat code
  while !name.empty? do
    # Add student hash to array
    students << {name: name, cohort: :october}
    puts "We now have #{students.count} students"
    # Get another student name
    name = gets.chomp
  end
  # Return array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

interactive_menu