require './Exercise_3/Candidate.rb';
require './Exercise_3/ClassA.rb'
require './Exercise_3/ClassB.rb'
require './Exercise_3/ClassC.rb'

class Admissions
  arr_242 = []

  while true
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
    puts "Enter 1 : Insert new candidate "
    puts "Enter 2 : Show information of candidate"
    puts "Enter 3 : Search candidate by id"
    puts "Enter 4 : Exit"
    option_242 = gets.to_i;
    case option_242
    when 1 
      print "_ Enter identification number: ";
      identificationNumber_242 = gets.chomp;
      print "_ Enter name: ";
      name_242 = gets.chomp;
      print "_ Enter address: ";
      address_242 = gets.chomp;
      print "_ Enter priority: ";
      priority_242 = gets.chomp;

      puts "+ Type of Class: ";
      puts "+) Enter a: Class A";
      puts "+) Enter b: Class B";
      puts "+) Enter c: Class C";
      typeOption_242 = gets.chomp;
      case typeOption_242
        when 'a'
          math_242 = "Toán"
          physical_242 = "Lý"
          chemistry_242 = "Hóa"
          classA = ClassA.new(identificationNumber_242, name_242, address_242, priority_242, math_242, physical_242, chemistry_242)
          arr_242.push(classA);
        when 'b'
          math_242 = "Toán"
          chemistry_242 = "Hóa"
          biology_242 = "Sinh"
          classB = ClassB.new(identificationNumber_242, name_242, address_242, priority_242, math_242, chemistry_242, biology_242)
          arr_242.push(classB);
        when 'c'
          literature_242 = "Văn"
          history_242 = "Sử"
          geography_242 = "Địa"
          classC = ClassC.new(identificationNumber_242, name_242, address_242, priority_242, literature_242, history_242, geography_242)
          arr_242.push(classC);
      end

    when 2
      puts "List candidates : ";
      for i in 0..(arr_242.length() -1)
          arr_242[i].infor();
          puts "-----------";
      end 
      
    when 3
      print "+) Search by ID: ";
      id_242 = gets.chomp;
      for i in 0..(arr_242.length() -1)
          if  arr_242[i].identificationNumber_242 == id_242
              arr_242[i].infor();
              puts "-----------";
          end
      end

    else
      break 
    end 
  end 

end