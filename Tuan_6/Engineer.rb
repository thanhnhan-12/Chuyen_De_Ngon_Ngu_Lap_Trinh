require_relative "./Officer.rb"
class Engineer < Officer
    @branch_242;
    def initialize(name, age, sex, address, branch)
        super(name, age, sex, address);
        @branch_242 = branch;
    end
    attr_accessor :branch_242;
    def showInformation()
        super();
        puts " branch: #{branch_242}";
    end
end