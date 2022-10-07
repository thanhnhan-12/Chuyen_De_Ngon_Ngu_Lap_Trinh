require './Excercise_2/Document.rb';

class Book < Document
  @author_242
  @pageNumber_242

  attr_accessor :author_242, :pageNumber_242

  def initialize(id, publisher, releaseNumber, author_242, pageNumber_242)
    super(id, publisher, releaseNumber)
    @author_242 = author_242
    @pageNumber_242 = pageNumber_242
  end 

  def infor 
    super()
    puts "Author: #{@author_242} \nPage number: #{@pageNumber_242} "
  end 

end 