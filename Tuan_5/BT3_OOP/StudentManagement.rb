class Human 

  attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation

  def initialize(name,hair,weight,height,age,phone,email,nation)
    @name   = name
    @hair   = hair
    @weight = weight 
    @height = height
    @age    = age
    @phone  = phone
    @email  = email
    @nation = nation
  end

  def showInformation
    puts "\nFullname: #{name} \nHair: #{hair} \nWeight: #{weight} \nHeight: #{height} \nAge: #{age} \nPhone: #{phone} \nEmail: #{email} \nNational: #{nation}"
  end
  
end

class Student < Human 

  attr_accessor :mathGrades, :physicalGrades, :chemistryGrades

  def initialize(name,hair,weight,height,age,phone,email,nation, mathGrades, physicalGrades, chemistryGrades)
    super(name,hair,weight,height,age,phone,email,nation)
    @mathGrades      = mathGrades
    @physicalGrades  = physicalGrades
    @chemistryGrades = chemistryGrades
  end

  def average
    (@mathGrades + @physicalGrades + @chemistryGrades ) / 3.0
  end

  def showInformation 
    super
    puts "Grade 1: #{mathGrades} \nGrade 2: #{physicalGrades} \nGrade 3: #{chemistryGrades} \nAverage: #{average}"
  end

end

arrayStudent = []
student_1 = Student.new("Nhan", "Black", 58, 58, 44, "0935489523", "nguyenthanhnhan12701@gmail.com", "Vietnam", 9, 10, 7)
student_2 = Student.new("Sy", "Black", 70, 68, 50, "0977258231", "sybuivan@gmail.com", "Vietnam", 9, 7, 6)
student_3 = Student.new("Huy", "Black", 60, 88, 32, "0985215823", "sybuivan@gmail.com", "Vietnam", 7, 8, 10)
student_4 = Student.new("Thien", "Black", 70, 98, 11, "0905444826", "vanthienpham@gmail.com", "Vietnam", 7, 10, 10)

arrayStudent.push(student_1)
arrayStudent.push(student_2)
arrayStudent.push(student_3)
arrayStudent.push(student_4)

puts "====== Unsorted student list :======= "
for i in 0..(arrayStudent.length-1)
    puts "=====Student #{i+1} ==== "
    puts arrayStudent[i].showInformation
 end

puts "====== Sorted student list :======= "
studentsort = arrayStudent.sort_by{|student| [student.average]}.reverse
for i in 0..(studentsort.length-1)
  puts "===== Student #{i+1} ===== "
  puts studentsort[i].showInformation
end

