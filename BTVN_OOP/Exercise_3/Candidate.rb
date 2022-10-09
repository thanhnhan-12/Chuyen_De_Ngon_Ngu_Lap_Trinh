class Candidate
  @identificationNumber_242
  @name_242
  @address_242
  @priority_242

  attr_accessor :identificationNumber_242, :name_242, :address_242, :priority_242

  def initialize(identificationNumber_242, name_242, address_242, priority_242)
    @identificationNumber_242 = identificationNumber_242
    @name_242 = name_242
    @address_242 = address_242
    @priority_242 = priority_242
  end

  def infor
    puts "=> Identification Number: #{@identificationNumber_242} " 
    puts "=> Name: #{@name_242} " 
    puts "=> Address: #{@address_242} "
    puts "=> Priority: #{@priority_242} "
  end

end