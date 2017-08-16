# Methods
def input_students
   puts "Please enter the names of the students"
   puts "To finish, just hit the return key twice"
   # Empty array
   students = []
   # get the furst name
   name = gets.chomp.capitalize
   # while the name is not empty: repeat
   while !name.empty? do
     #add the student hash to the array
     students << {name: name, cohort: :november}
     puts "Now we have #{students.count} students"
     # get another name from the user
     name = gets.chomp.capitalize
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
     if student[:name].length < 12
       puts "#{i}: #{student[:name]} (#{student[:cohort]} cohort)"
     end
   end
    puts
    puts "The students with names beginning with J..."
   names.each.with_index(1) do |student, i|
       if student[:name][0] == ("J")
         puts "#{i}: #{student[:name]} (#{student[:cohort]} cohort)"
       end
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
#puts select_names_starting_with(students, 'J')
print(students)
print_footer(students)
