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
    @name = name
    @hair = hair
    @weight = weight 
    @height = height
    @age = age
    @phone = phone
    @email = email
    @nation = nation
  end

  attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation

  def showInformation
    puts "Fullname: #{name} \nHair: #{hair} \nWeight: #{weight} \nHeight: #{height} \nAge: #{age} \nPhone: #{phone} \nEmail: #{email} \nNational: #{nation}"
  end
  
end

class Student < Human 
  @grade_1
  @grade_2
  @grade_3

  def initialize(name,hair,weight,height,age,phone,email,nation, grade_1, grade_2, grade_3)
    super(name,hair,weight,height,age,phone,email,nation)
    @grade_1 = grade_1
    @grade_2 = grade_2
    @grade_3 = grade_3
  end

  attr_accessor :grade_1, :grade_2, :grade_3

  def average
    (@grade_1 + @grade_2 + @grade_3 ) / 3.0
  end

  def showInformation 
    super
    puts "Grade 1: #{grade_1} \nGrade 2: #{grade_2} \nGrade 3: #{grade_3} \nAverage: #{average}   "
  end

end

arrayStudent = Array.new
student_1 = Student.new("Nhan", "Black", 58, 58, 21, "0935489523", "nguyenthanhnhan12701@gmail.com", "Vietnam", 9, 10, 7, "Avarage: #{avarage} ")
student_2 = Student.new("Sy", "Black", 58, 58, 21, "0905215823", "sybuivan@gmail.com", "Vietnam", 9, 8, 6, "Avarage: #{avarage} ")
