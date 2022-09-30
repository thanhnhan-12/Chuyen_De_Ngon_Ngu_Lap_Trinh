require_relative './Officer.rb'
class Worker < Officer
    @level_242
    def initialize(name, age, sex, address, level)
        super(name, age, sex, address);
        @level_242 = level;
    end
    attr_accessor :level_242;
    def showInformation
        super()
        puts "level: #{level_242}";
    end
end