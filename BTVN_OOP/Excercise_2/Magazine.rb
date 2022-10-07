require './Excercise_2/Document.rb';

class Magazine < Document
  @issueNumber_242
  @releaseMonth_242

  attr_accessor :issueNumber_242, :releaseMonth_242

  def initialize(id, publisher, releaseNumber, issueNumber_242, releaseMonth_242)
    super(id, publisher, releaseNumber)
    @issueNumber_242 = issueNumber_242
    @releaseMonth_242 = releaseMonth_242
  end 

  def infor 
    super()
    puts "Issue number: #{@issueNumber_242} \nRelease month: #{@releaseMonth_242} "
  end 
end 