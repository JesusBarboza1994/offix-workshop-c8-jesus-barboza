puts "Seeding - START"

Employee.destroy_all
Department.destroy_all

puts "Seeding Departments"

marketing = Department.create(name: "Marketing", description: "This is a great department")
engineering = Department.create(name: "Engineering", description: "This is a great department")
operations = Department.create(name: "Operations", description: "This is a great department")

puts "Seeding Employees"

emmet = Employee.create(
  name: "Emment Bart",
  role: "Software Developer",
  nationality: "Peru",
  birth_date: 35.years.ago,
  department: engineering
)

alva = Employee.create(
  name: "Alva Galia",
  role: "Senior Software Developer",
  nationality: "Mexico",
  birth_date: 25.years.ago,
  department: engineering
)

rico = Employee.create(
  name: "Rico Cornelius",
  role: "Apprentice",
  nationality: "Peru",
  birth_date: 20.years.ago,
  department: engineering
)

lyric = Employee.create(
  name: "Lyric Wilton",
  role: "Software Developer",
  nationality: "Peru",
  birth_date: 35.years.ago,
  department: engineering
)

eva = Employee.create(
  name: "Eva Gabriela",
  role: "Senior Software Developer",
  nationality: "Mexico",
  birth_date: 30.years.ago,
  department: engineering
)

puts "Seeding - END"