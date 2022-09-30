class Officer 
  @name_242;
  @age_242;
  @sex_242;
  @address_242;

  def initialize(name, age, sex, address)
      @name_242 = name;
      @age_242 = age; 
      @sex_242 = sex;
      @address_242 = address;
  end
  # attr_accessor : name_242, :age_242, :sex_242, :address_242 ;
  def showInformation
      puts " Name: #{@name_242} \n Age: #{@age_242} \n Gender: #{@sex_242} \n Address: #{@address_242}";
  end
end