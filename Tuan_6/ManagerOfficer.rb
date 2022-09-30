load "Staff.rb";
load "Engineer.rb";
load "Worker.rb";
class ManagerOfficer 
  manager_242 = [];

  while true
    puts "Enter 1: Insert a new Officer";
    puts "Enter 2: Search office by name";
    puts "Enter 3: Show information officers";
    puts "enter 4: Exit";
    menu_242 = gets.to_i;
    case menu_242
    when 1 
      print "Enter name : ";
      name_242 = gets;
      print "Enter age :";
      age_242 = gets.to_i;
      print "Enter gender :";
      sex_242 = gets;
      print "Enter Address :";
      address_242 = gets;

      puts "\nEnter officer type";
      puts "Enter a: Insert Enginner";
      puts "Enter b: Insert Worker";
      puts "Enter c: Insert Staff";

      offticerType = gets.chomp;
      case  offticerType
      when 'a'
        print "Enter branch : ";
        branch_242 = gets;
        engineer_242 = Engineer.new(name_242, age_242, sex_242, address_242, branch_242)
        manager_242.push(engineer_242);

      when "b"
        print "Enter level : ";
        level_242 = gets;
        worker_242 = Worker.new(name_242, age_242, sex_242, address_242, level_242)
        manager_242.push(worker_242);

      when "c"
        print "Enter job : ";
        job_242 = gets;
        staff_242 = Staff.new(name_242, age_242, sex_242, address_242, job_242)
        manager_242.push(staff_242);

      else 
        puts "Please enter true"
      end

    when 3
      puts "Danh sach can bo : ";
      puts manager_242.length();
      for i in 0..(manager_242.length() -1)
        manager_242[i].showInformation();
        puts "-----------";
      end
    else
      break;
    end
  end

end