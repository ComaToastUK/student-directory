# Methods
def input_students
   puts "Please enter the names of the students"
   puts "To finish, just hit the return key twice"
   students = [] # Empty array
   name = gets.chomp.capitalize # get the first name
   while !name.empty? do
     puts "Please enter the month of the cohort" #cohort
     cohort = gets.chomp.capitalize
     #add the student hash to the array
     students << {name: name, cohort: cohort}
     if (students.count > 1)
       puts "Now we have #{students.count} students"
     else
       puts "Now we have #{students.count} student"
     end
     puts "Please enter the details of another student. Hit the return key twice to finish."
     name = gets.chomp.capitalize # get another name from the user
   end
     return students # return the array of students
   end
   # Header
def print_header
     puts "The students of Villains Academy".center(75)
     puts "-------------".center(75)
 end

    # Print hashes
def print (students)
   i = 0
   lineWidth = 40
   while students.count > i
     puts "#{i+1}: #{students[i][:name]} (#{students[i][:cohort]} cohort)".ljust(25)
     i += 1
   end
end
    # Print footer & .count
def print_footer(names)
   puts
   if (names.count > 1)
     puts "Overall, we have #{names.count} great students".center(75)
   else
     puts "Overall, we have #{names.count} great student".center(75)
   end
end


# Calling methods
students = input_students
print_header
print(students)
print_footer(students)
