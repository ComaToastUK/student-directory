# Methods
def input_students
   puts "Please enter the names of the students"
   puts "To finish, just hit the return key twice"
   # Empty array
   students = []
   # get the furst name
   name = gets.chomp
   # while the name is not empty: repeat
   while !name.empty? do
     #add the student hash to the array
     students << {name: name, cohort: :november}
     puts "Now we have #{students.count} students"
     # get another name from the user
     name = gets.chomp
   end
   # return the array of students
     students
   end
   # Header
 def print_header
     puts "The students of Villains Academy"
     puts "-------------"
 end

    # Print hashes
 def print (names)
   names.each.with_index(1) do | student, i |
     puts "#{i}: #{student[:name]} (#{student[:cohort]} cohort)"
   end
 end
    # Print footer & .count
 def print_footer(names)
   puts "Overall, we have #{names.count} great students"
 end
#
# Calling methods
students = input_students
print_header
print(students)
print_footer(students)
