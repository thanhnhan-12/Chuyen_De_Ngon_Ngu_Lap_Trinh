require_relative "Officer";
class Staff < Officer
    @job_242;
    def initialize(name, age, sex, address, job)
        super(name, age, sex, address);
        @job_242 = job
    end
    attr_accessor :job_242;
    def showInformation()
        super();
        puts " job: #{job_242}";
    end
end