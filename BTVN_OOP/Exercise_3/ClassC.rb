require './Exercise_3/Candidate.rb';

class ClassC < Candidate
  @literature_242
  @history_242
  @geography_242

  attr_accessor :literature_242, :history_242, :geography_242

  def initialize(identificationNumber_242, name_242, address_242, priority_242, literature_242, history_242, geography_242)
    super(identificationNumber_242, name_242, address_242, priority_242)
    @literature_242 = "Văn"
    @history_242 = "Sử"
    @geography_242 = "Địa"
  end

  def infor
    super()
    puts "=> Literature: #{@literature_242}"
    puts "=> History: #{@history_242}"
    puts "=> Geography: #{@geography_242} "
  end
  
end