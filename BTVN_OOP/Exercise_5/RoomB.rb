require './Exercise_5/Room.rb'

class RoomB < Room

  def initialize
      super("B",300)
  end

  def display
      puts"=> Loai phong: #{@type_242}"
      puts"=> Gia phong: #{@price_242}"
  end
end