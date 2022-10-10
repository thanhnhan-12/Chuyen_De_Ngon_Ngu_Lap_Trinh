class Student
  attr_accessor :name_242, :age_242, :address_242

  def initialize(name_242, age_242, address_242)
    @name_242 = name_242
    @age_242 = age_242
    @address_242 = address_242
  end

  def input 
    print "Enter name: "
    @name_242 = gets.to_s
    print "Enter age: "
    @age_242 = gets.to_i
    print "Enter address:"
    @address_242 = gets.to_s
  end

  def display
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Name: #{@name_242}"
    puts "Age: #{@age_242}"
    puts "Home town: #{@address_242}"
  end
end


class School < Student
  def initialize
    @students_242 = []
  end

  def add(student)
      @students_242.push(student)
  end

  def display
      @students_242.each{|item| puts item.display}
  end


  def display20
      result = @students_242.select{|item| item.age_242 == 20}
      result.each{|std| puts std.display}
  end

  def display23vsDN
      count_242 = 0
      @students_242.each do |item|
          puts item.address_242
          if item.age_242 == 23 && item.address_242 == "DN"
              count_242+=1;
          end     
      end   
      return count_242
  end
end

school_242 = School.new

while true
  puts "--------------------------------------"
  puts "Enter 1: Add new students "
  puts "Enter 2: Show student in 20 years old "
  puts "Enter 3: Show student in 23 years old and home town is DN"
  puts "Enter 4: Exit "
  value  = gets.to_i
  case value
    when 1
      print "Enter name: "
      name_242 = gets.chomp
      print "Enter age: "
      age_242 = gets.to_i
      print "Enter address: "
      address_242 = gets.chomp
      student_242 = Student.new(name_242, age_242, address_242)
      school_242.add(student_242)
    when 2
      school_242.display20
    when 3
      puts school_242.display23vsDN
    when 4
      break
    else
      puts "Khong hop le"
  end
end