class Student
    @name_242;
    @age_242;
    @math_242;
    @physical_242;
    @chemistry_242;

    def initialize(name, age, math, physical, chemistry)
      @name_242 = name;
      @age_242 = age;
      @math_242 = math;
      @physical_242 = physical;
      @chemistry_242 = chemistry;
    end

    def name
        @name_242
      end
    def name=(name)
        @name_242 = name
    end

    def age
        @age_242
      end
    def age=(age)
        @age_242 = age
    end

    def math
        @math_242
      end
    def math=(math)
        @math_242 = math
    end


    def physical
        @physical_242
      end
    def physical=(physical)
        @physical_242 = physical
    end

    def  chemistry
        @chemistry_242
      end
    def  chemistry=( chemistry)
        @chemistry_242 =  chemistry
    end

    def average 
        (@math_242 + @physical_242 + @chemistry_242 )/3
    end

    def toString 
        print "Name: ", name
        print "Age: ", age
        print "Average: ", average
    end
end


print "Enter student name : "
name = gets;

print "Enter student age : "
age = gets;

print "Enter student math : "
math = gets.to_i;

print "Enter student physical : "
physical = gets.to_i;

print "Enter student chemistry : "

chemistry = gets.to_i;
student = Student.new(name,age,math,physical,chemistry);
student.toString