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

  def name
    @name end
  def name=(name)
    @name = name end

  def gender
    @gender end
  def gender=(gender)
    @gender = gender end

  def height
    @height end
  def height=(height)
    @height = height end

  def weight
    @weight end
  def weight=(weight)
    @weight = weight end
  
  def email
    @email end
  def email=(email)
    @email = email end

  def phone
    @phone end
  def phone=(phone)
    @phone = phone end
  

  def showInformation 
    puts "Name: #{name} \nGender: #{gender} \nHeight: #{height} \nWeight: #{weight} \nEmail: #{email} \nPhone: #{phone}"
    # puts "" 
    # puts ""
    # puts "Weight: #{weight}"
    # puts "Email: #{email}"
    # puts "Phone: #{phone}"
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

  def age
      @age
  end
  def age=(age)
      @age = age
  end

  def address 
    @address
  end
  def address=(address)
      @address = address 
  end

  def className
    @className 
  end
  def className=(className)
    @className = className
  end

  def grade_1
    @grade_1 end
  def grade_1=(grade_1)
    @grade_1 = grade_1 end

  def grade_2
    @grade_2 end
  def grade_2=(grade_2)
    @grade_2 = grade_2 end  

  def grade_3
    @grade_3 end
  def grade_3=(grade_3)
    @grade_3 = grade_3 end

  def average
    (@grade_1 + @grade_2 + @grade_3 ) / 3.0
  end

  def showInformation 
    super
    puts "Age: #{age} \nAddress: #{address} \nClassName: #{className} \nGrade 1: #{grade_1} \nGrade 2: #{grade_2} \nGrade 3: #{grade_3} \nAverage: #{average}   "
  end

end

arrayStudent = Array.new
student_1 =  Student.new("Nhan", "Male", 58, 50, "nguyenthanhnhan12701@gmail.com", "0935222189", 21, "Da Nang", "19T2", 8, 7, 8).showInformation
student_2 =  Student.new("\n ""Sy", "Male", 58, 50, "nguyenthanhnhan12701@gmail.com", "0935222189", 21, "Da Nang", "19T2", 8, 7, 8).showInformation
student_3 =  Student.new("\n ""Huy", "Male", 58, 50, "nguyenthanhnhan12701@gmail.com", "0935222189", 21, "Da Nang", "19T2", 8, 7, 8).showInformation

arrayStudent.push(student_1, student_2, student_3)

arrayStudent.each do |student|
  puts "#{student} "
end