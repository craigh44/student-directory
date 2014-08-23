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

students = input_students
print_header
print(students)
print_footer(students)

