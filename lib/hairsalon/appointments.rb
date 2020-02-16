class Hairsalon::Appointment

    @@all = []

    def initialize(date, time, customer, stylist)
        @date = date
        @stylist = stylist
        @time = time
        @customer = customer
        @@all << self
    
    end

    def self.all
        @@all

    end

    # def create_appt
    #     Hairsalon::Appointment.new 
    
    
    # end



end
