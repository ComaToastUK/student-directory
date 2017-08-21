@students = []

def input_students
   puts "Please enter the full name of the student"
   puts "To finish, just hit the return key twice"
   students = [] # Empty array
   name = STDIN.gets.chomp.capitalize # get the first name
   while !name.empty? do
     puts "Please enter the month of the cohort"
     cohort = STDIN.gets.chomp.capitalize
    #add_students call
     add_students(name, cohort)
     @students.count > 1 ? (puts "Now we have #{@students.count} students") : (puts "Now we have #{@students.count} student")
     puts "Please enter the details of another student. Hit the return key twice to finish."
     name = STDIN.gets.chomp.capitalize # get another name from the user
   end
     return students # return the array of students
end

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
  puts "File saved"
end

def add_students(name, cohort)
  @students << {name: name.capitalize, cohort: cohort.to_sym}
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    add_students(name, cohort)
  end
  file.close
  puts "Loaded students from file"
end

def try_load_students
  filename = ARGV.first # first argument from the command line
  return if filename.nil? # get out of the method if it isn't given
  if File.exists?(filename) # if it exists
    load_students(filename)
     puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exist
    puts "Sorry, #{filename} doesn't exist."
    exit # quit the program
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def process (selection)
  case selection
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
      puts "I don't know what you meant, try again"
    end
end

   # Header
 def print_header
     puts "The students of Villains Academy".center(75)
     puts "-------------".center(75)
 end

    # Print hashes
def print_students_list
   i = 0
   lineWidth = 40
   if @students.count == 0
    return nil
   end
   while @students.count > i
     puts "#{i+1}: #{@students[i][:name]} (#{@students[i][:cohort]} cohort)".ljust(25)
     i += 1
   end
end
    # Print footer & .count
def print_footer
   @students.count > 1 ? (puts "Overall, we have #{@students.count} great students".center(75)) : (puts "Overall, we have #{@students.count} great student".center(75))
end

def load_by_default
  if (@students.count == 0)
   load_students
  end
end

# Calling methods
load_by_default
interactive_menu
