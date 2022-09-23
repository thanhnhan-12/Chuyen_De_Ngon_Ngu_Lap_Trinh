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
  $grade_1;
  $grade_2;
  $grade_3;

  def initialize(name, gender, height, weight, email, phone, age, address, className, grade_1, grade_2, grade_3)
    super(name, gender, height, weight, email, phone)
    @age       = age
    @address   = address
    @className = className
    @grade_1   = grade_1
    @grade_2   = grade_2
    @grade_3   = grade_3
  end

  attr_accessor :age, :address, :className, :grade_1, :grade_2, :grade_3

  def average
    (@grade_1 + @grade_2 + @grade_3 ) / 3.0
  end

  def showInformation 
    super
    puts "Age: #{age} \nAddress: #{address} \nClassName: #{className} \nGrade 1: #{grade_1} \nGrade 2: #{grade_2} \nGrade 3: #{grade_3} \nAverage: #{average}"
  end

end

arrayStudent = Array.new
student_1 =  Student.new("Nhan", "Male", 58, 50, "nguyenthanhnhan12701@gmail.com", "0935222189", 21, "Da Nang", "19T2", 8, 7, 8).showInformation
student_2 =  Student.new("Sy", "Male", 58, 50, "sybuivan@gmail.com", "0935222189", 21, "Quang Tri", "19T2", 8, 7, 8).showInformation
student_3 =  Student.new("Huy", "Male", 58, 50, "huyquang@gmail.com", "0935222189", 21, "Kon Tum", "19T2", 8, 7, 8).showInformation

arrayStudent.push(student_1, student_2, student_3)

arrayStudent.each do |student|
  puts "#{student}"
end