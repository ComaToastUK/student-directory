# Methods
def input_students
   puts "Please enter the names of the students"
   puts "To finish, just hit the return key twice"
   # Empty array
   students = []
   # get the furst name
   name = gets.chomp.capitalize
   #cohort
   puts "Please enter the month of the cohort"
   cohort = gets.chomp.capitalize
   # hobby
   puts "Please enter a hobby"
   hobby = gets.chomp.capitalize
   # country of your birth
   puts "Please enter the country of your birth"
   country = gets.chomp.downcase
   # height
   puts "Please enter your height"
   height = gets.chomp.to_s
   # while the name is not empty: repeat
   while !name.empty? do
     #add the student hash to the array
     students << {name: name, cohort: cohort, hobby: hobby, country: country, height: height}
     puts "Now we have #{students.count} students"
     # get another name from the user
     name = gets.chomp.capitalize
     cohort = gets.chomp.capitalize
     hobby = gets.chomp.downcase
     country = gets.chomp.capitalize
     height = gets.chomp.to_s
   end
   # return the array of students
     students
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
     puts "#{i+1}: #{students[i][:name]} (#{students[i][:cohort]} cohort) - Enjoys: #{students[i][:hobby]} - Born: #{students[i][:country]} - #{students[i][:height]} tall".center(25)
     i += 1
   end
 end
    # Print footer & .count
 def print_footer(names)
   puts
   puts "Overall, we have #{names.count} great students".center(75)
 end

# Calling methods
students = input_students
print_header
print(students)
print_footer(students)
