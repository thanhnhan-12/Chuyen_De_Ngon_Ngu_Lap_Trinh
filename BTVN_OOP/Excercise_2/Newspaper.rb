load "./Document.rb"

class Newspaper < Document
  @releaseDate_242

  attr_accessor :issueNumber_242, :releaseDate_242

  def initialize(id, publisher, releaseNumber, releaseDate_242)
    super(id, publisher, releaseNumber)
    @releaseDate_242 = releaseDate_242
  end 

  def infor 
    super()
    puts "Release Date: #{@releaseDate_242} "
  end 

end 