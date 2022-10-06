class Document
  @docID_242
  @publisher_242
  @releaseNumber_242

  attr_accessor :docID_242, :publisher_242, :releaseNumber_242

  def initialize(docID, publisher, releaseNumber)
    @docID_242 = docID
    @publisher_242 = publisher
    @releaseNumber_242 = releaseNumber
  end 

  def infor
    puts "ID: #{@docID_242} \nPublisher: #{@publisher_242} \nRelease: #{@releaseNumber_242}"
  end 

end 