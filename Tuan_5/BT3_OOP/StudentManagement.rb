class Human 

  attr_accessor :name_242, :hair_242, :weight_242, :height_242, :age_242, :phone_242, :email_242, :nation_242

  def initialize(name_242,hair_242,weight_242,height_242,age_242,phone_242,email_242,nation_242)
    @name_242   = name_242
    @hair_242   = hair_242
    @weight_242 = weight_242 
    @height_242 = height_242
    @age_242    = age_242
    @phone_242  = phone_242
    @email_242  = email_242
    @nation_242 = nation_242
  end

  def showInformation
    puts "\nFullname: #{name_242} \nHair: #{hair_242} \nWeight: #{weight_242} \nHeight: #{height_242} \nAge: #{age_242} \nPhone: #{phone_242} \nEmail: #{email_242} \nNation: #{nation_242}"
  end
  
end

class Student < Human 

  attr_accessor :mathGrades_242, :physicalGrades_242, :chemistryGrades_242

  def initialize(name_242,hair_242,weight_242,height_242,age_242,phone_242,email_242,nation_242, mathGrades_242, physicalGrades_242, chemistryGrades_242)
    super(name_242,hair_242,weight_242,height_242,age_242,phone_242,email_242,nation_242)
    @mathGrades_242      = mathGrades_242
    @physicalGrades_242  = physicalGrades_242
    @chemistryGrades_242 = chemistryGrades_242
  end

  def average_242
    (@mathGrades_242 + @physicalGrades_242 + @chemistryGrades_242 ) / 3.0
  end

  def showInformation 
    super
    puts "Math Grades: #{mathGrades_242} \nPhysical Grades: #{physicalGrades_242} \nChemistry Grades: #{chemistryGrades_242} \nAverage: #{average_242}"
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
studentsort = arrayStudent.sort_by{|student| [student.average_242]}.reverse
for i in 0..(studentsort.length-1)
  puts "===== Student #{i+1} ===== "
  puts studentsort[i].showInformation
end

