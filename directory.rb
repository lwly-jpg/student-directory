# Array list of students
students = [
  {name: "Dr. Hannibal Lecter", cohort: :october},
  {name: "Darth Vader", cohort: :october},
  {name: "Nurse Ratched", cohort: :october},
  {name: "Michael Corleone", cohort: :october},
  {name: "Alex DeLarge", cohort: :october},
  {name: "The Wicked Witch of the West", cohort: :october},
  {name: "Terminator", cohort: :october},
  {name: "Freddy Krueger", cohort: :october},
  {name: "The Joker", cohort: :october},
  {name: "Joffrey Baratheon", cohort: :october},
  {name: "Norman Bates", cohort: :october}
] 

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

print_header
print(students)
print_footer(students)