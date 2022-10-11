require './Exercise_5/Room.rb'

class RoomC < Room
  
  def initialize
      super("C",100)
  end

  def display
      puts"=> Loai phong: #{@type_242}"
      puts"=> Gia phong: #{@price_242}"
  end
end