class Main
  @name
  @gender
  @height
  @weight
  @email
  @phone 

  def initialize(name, gender, height, weight, email, phone)
    @name   = name
    @gender = gender
    @height = height
    @weight = weight  
    @email  = email
    @phone  = phone
  end
  
  attr_accessor :name, :gender, :height, :weight, :email, :phone

  def showInformation 
    puts "\nName: #{name} \nGender: #{gender} \nHeight: #{height} \nWeight: #{weight} \nEmail: #{email} \nPhone: #{phone}"
  end

end

class Student < Main
  $age;
  $address;
  $className;
  $mathGrades;
  $physicalGrades;
  $chemistryGrades;

  def initialize(name, gender, height, weight, email, phone, age, address, className, mathGrades, physicalGrades, chemistryGrades)
    super(name, gender, height, weight, email, phone)
    @age             = age
    @address         = address
    @className       = className
    @mathGrades      = mathGrades
    @physicalGrades  = physicalGrades
    @chemistryGrades = chemistryGrades
  end

  attr_accessor :age, :address, :className, :mathGrades, :physicalGrades, :chemistryGrades

  def average
    (@mathGrades + @physicalGrades + @chemistryGrades ) / 3.0
  end

  def showInformation 
    super
    puts "Age: #{age} \nAddress: #{address} \nClassName: #{className} \nGrade 1: #{mathGrades} \nGrade 2: #{physicalGrades} \nGrade 3: #{chemistryGrades} \nAverage: #{average}"
  end

end

arrayStudent = []
student_1 =  Student.new("Nhan", "Male", 58, 50, "nguyenthanhnhan12701@gmail.com", "0935222189", 21, "Da Nang", "19T2", 8, 7, 8).showInformation
student_2 =  Student.new("Sy", "Male", 58, 50, "sybuivan@gmail.com", "0935226689", 21, "Quang Tri", "19T2", 8, 10, 8).showInformation
student_3 =  Student.new("Huy", "Male", 58, 50, "huyquang@gmail.com", "0915222189", 21, "Kon Tum", "19T2", 8, 7, 9).showInformation
student_3 =  Student.new("Thien", "Male", 88, 40, "vanthienpham@gmail.com", "0935222334", 21, "Quang Nam", "19T2", 10, 7, 8).showInformation

arrayStudent.push(student_1)
arrayStudent.push(student_2)
arrayStudent.push(student_3)