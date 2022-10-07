require './Excercise_2/Document.rb';
require './Excercise_2/Book.rb'
require './Excercise_2/Magazine.rb'
require './Excercise_2/Newspaper.rb'

class BookMagagerment
  arr_242 = []

  while true
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
    puts "Enter 1 : Insert new document"
    puts "Enter 2 : Delete a document"
    puts "Enter 3 : Show all documents"
    puts "Enter 4 : Search a document"
    puts "Enter 5 : Exit"
    option_242 = gets.to_i;
    case option_242
    when 1 
        print "enter document Id: ";
        docID_242 = gets;
        print "Enter publisher: "
        publisher_242 = gets;
        print "Enter document number: ";
        releaseNumber_242 = gets;

        puts "Type of document: ";
        puts "Enter a: books";
        puts "Enter b: magazine";
        puts "Enter c: Newspaper";
        typeOption_242 = gets.chomp;
        case typeOption_242
        when 'a'
            print "Enter author name: ";
            author_242 = gets;
            print "Enter page number: ";
            pageNumber_242 = gets;
            book = Book.new(docID_242, publisher_242, releaseNumber_242, author_242, pageNumber_242);
            arr_242.push(book);
        when 'b'
            print "Enter issue number: ";
            issueNumber_242 = gets;
            print "Enter release month: ";
            releaseMonth_242 = gets;
            magazine = Magazine.new(docID_242, publisher_242, releaseNumber_242, issueNumber_242, releaseMonth_242);
            
            arr_242.push(magazine);
        when 'c'
            print "Enter release date: ";
            releaseDate_242 = gets;
            newspaper = Newspaper.new(docID_242, publisher_242, releaseNumber_242, releaseDate_242);
            arr_242.push(newspaper);
        end
    when 2
        print "enter id document to delete: ";
        id_242 = gets.chomp;
        arr_242.delete_if {|a| a.docID_242 == id_242}
    when 3
        puts "List document : ";
        for i in 0..(arr_242.length() -1)
            arr_242[i].infor();
            puts "-----------";
        end
    when 4
        puts "enter Type of document to filter:";
        puts "Enter a: books";
        puts "Enter b: magazine";
        puts "Enter c: Newspaper";
        optionType_242 = gets.chomp;
        case optionType_242
            when 'a'
                for i in 0..(arr_242.length() -1)
                    item_242 = arr_242[i];
                    if item_242.instance_of? Book 
                        arr_242[i].infor();
                    puts "-----------";
                end
            end
            when 'b'
                for i in 0..(arr_242.length() -1)
                    item_242 = arr_242[i];
                    if item_242.instance_of? Magazine 
                        arr_242[i].infor();
                    puts "-----------";
                end
            end
            when 'c'
                for i in 0..(arr_242.length() -1)
                    item_242 = arr_242[i];
                    if item_242.instance_of? Newspaper  
                        arr_242[i].infor();
                    puts "-----------";
                end
            end
        end


    else break;
    end
end

end 