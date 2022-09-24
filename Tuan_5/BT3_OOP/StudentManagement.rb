class Human 
  @name
  @hair
  @weight
  @height
  @age
  @phone
  @email
  @nation

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

  attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation

  def showInformation
    puts "\nFullname: #{name} \nHair: #{hair} \nWeight: #{weight} \nHeight: #{height} \nAge: #{age} \nPhone: #{phone} \nEmail: #{email} \nNational: #{nation}"
  end
  
end

class Student < Human 
  @mathGrades
  @physicalGrades
  @chemistryGrades

  def initialize(name,hair,weight,height,age,phone,email,nation, mathGrades, physicalGrades, chemistryGrades)
    super(name,hair,weight,height,age,phone,email,nation)
    @mathGrades      = mathGrades
    @physicalGrades  = physicalGrades
    @chemistryGrades = chemistryGrades
  end

  attr_accessor :mathGrades, :physicalGrades, :chemistryGrades

  def average
    (@mathGrades + @physicalGrades + @chemistryGrades ) / 3.0
  end

  def showInformation 
    super
    puts "Grade 1: #{mathGrades} \nGrade 2: #{physicalGrades} \nGrade 3: #{chemistryGrades} \nAverage: #{average}"
  end

end

arrayStudent = []
student_1 = Student.new("Nhan", "Black", 58, 58, 21, "0935489523", "nguyenthanhnhan12701@gmail.com", "Vietnam", 9, 10, 7).showInformation
student_2 = Student.new("Sy", "Black", 70, 68, 21, "0905215823", "sybuivan@gmail.com", "Vietnam", 9, 7, 6).showInformation
student_3 = Student.new("Huy", "Black", 60, 88, 21, "0905215823", "sybuivan@gmail.com", "Vietnam", 7, 8, 10).showInformation

arrayStudent.push(student_1)
arrayStudent.push(student_2)
arrayStudent.push(student_3)

