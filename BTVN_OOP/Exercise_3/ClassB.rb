require './Exercise_3/Candidate.rb';

class ClassB < Candidate
  @math_242
  @chemistry_242
  @biology_242

  attr_accessor :math_242, :chemistry_242, :biology_242

  def initialize(identificationNumber_242, name_242, address_242, priority_242, math_242, chemistry_242, biology_242)
    super(identificationNumber_242, name_242, address_242, priority_242)
    @math_242 = "Toán"
    @chemistry_242 = "Hóa"
    @biology_242 = "Sinh"
  end

  def infor
    super()
    puts "=> Math: #{@math_242}"
    puts "=> Chemistry: #{@chemistry_242}"
    puts "=> Biology: #{@biology_242} "
  end

end