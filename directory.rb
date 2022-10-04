# # Array list of students
# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :october},
#   {name: "Darth Vader", cohort: :october},
#   {name: "Nurse Ratched", cohort: :october},
#   {name: "Michael Corleone", cohort: :october},
#   {name: "Alex DeLarge", cohort: :october},
#   {name: "The Wicked Witch of the West", cohort: :october},
#   {name: "Terminator", cohort: :october},
#   {name: "Freddy Krueger", cohort: :october},
#   {name: "The Joker", cohort: :october},
#   {name: "Joffrey Baratheon", cohort: :october},
#   {name: "Norman Bates", cohort: :october}
# ] 

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
    # Get anotehr student name
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
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)