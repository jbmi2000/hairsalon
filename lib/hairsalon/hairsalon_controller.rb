class Hairsalon::HairsalonController

     
    # def initialize   everything puts'ed out from this class only.  And only user input in this class.
    #    self.run
    # end

    def run
        puts "\n\nWelcome to your Hair Salon Experience\n\n"
        
        get_services_menu
        list_services_menu
        get_user_input
                
    end

    def get_services_menu
        @services = Hairsalon::Service.all
       
    end

    def list_services_menu
        puts "Please select option 1, 2, 3, or 4 for more information:\n\n"
        @services.each_with_index do |service, index|
            # binding.pry
            puts "#{index + 1}. #{service.name}"
        end
    
    end

    def get_user_input
        puts "\nEnter your selection here:\n" 
        input = (gets.strip).to_i
        # integer(input)
        # binding.pry

        display_selection(input) if valid_entry(input, @services)       
           
    end

    def valid_entry(input, data)
        input.to_i <= data.length && input.to_i > 0

    end

    def display_selection(input)
        service = @services[input - 1]
        puts "\nYou have chosen to receive the following service: \n\n"
        puts "#{service.name}\n\n"
        puts "Would you like book your service today?\n\n"
    
    end

    
end