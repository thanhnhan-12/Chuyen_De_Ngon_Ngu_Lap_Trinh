require './Exercise_3/Candidate.rb';

class ClassA < Candidate
  @math_242
  @physical_242
  @chemistry_242

  attr_accessor :math_242, :physical_242, :chemistry_242

  def initialize(identificationNumber_242, name_242, address_242, priority_242, math_242, physical_242, chemistry_242)
    super(identificationNumber_242, name_242, address_242, priority_242)
    @math_242 = "Toán"
    @physical_242 = "Lý"
    @chemistry_242 = "Hóa"
  end

  def infor
    super()
    puts "=> Math: #{@math_242}"
    puts "=> Physical: #{@physical_242}"
    puts "=> Chemistry: #{@chemistry_242}"
  end

end

