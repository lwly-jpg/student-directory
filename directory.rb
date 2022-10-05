@students = []

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts "What would you like to do?"
  puts "1. Input students"
  puts "2. Show students"
  puts "3. Save list to CSV file"
  puts "4. Load student list from CSV"
  puts "9. Exit"
end

def show_students
  print_header
  print_students
  print_footer
end

def process(menu_input)
  case menu_input
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit
    else
      puts "Invalid input. Please enter a number."
  end
end

def input_students
  puts "Enter the names of the students"
  puts "Hit return twice to finish"
  # Get first student name
  name = gets.chomp
  # While name is not empty, repeat code
  while !name.empty? do
    # Add student hash to array
    @students << {name: name, cohort: :october}
    puts "We now have #{@students.count} students"
    # Get another student name
    name = gets.chomp
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_students
  @students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(",")
      @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

interactive_menu