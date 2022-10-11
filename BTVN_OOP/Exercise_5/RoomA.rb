require './Exercise_5/Room.rb'

class RoomA < Room

  def initialize
      super("A",500)
  end

  def display
      puts"=> Loai phong: #{@type_242}"
      puts"=> Gia phong: #{@price_242}"
  end
end