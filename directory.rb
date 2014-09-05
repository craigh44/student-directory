#lets put all the students into an array
def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
#Create an empty array
students = []
#Get the first name
name = gets.chomp
#while the name is not empty, repeat this code
while !name.empty? do
	#add the student hash to the array
	students << {:name => name, :cohort => :november}
	puts "now we have #{students.length} students"
#get another name from the user
name = gets.chomp
end
#retur the array of students
students
end

def print_header
puts "The students of my cohort at Makers Academy"
puts "-------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

def interactive_menu 
	loop do
		#1. Print the menu and ask user what to do
		puts "1. Input the students"
		puts "2. Show the students"
		puts "9. Exit"
		#2. Read the input and save it into a variable
		selection = gets.chomp

		#3. do what the user has asked
		case selection
		when "1"
			students = input_students#input the students
		when "2"
			print_header
			print(students)
			print_footer(students)
			#show the students
		when "9"
			Exit #this will cause the program to terminate
		else
			puts "I don't know what you meant, try again"
		end
	end
end


students = input_students
print_header
print(students)
print_footer(students)

