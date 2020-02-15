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
        # to be scraped
        @services = ['Haircut', 'Chemical Service', 'Makeup'] 
       
    end

    def list_services_menu
        puts "Please select option 1, 2, or 3 for more information:\n\n"
        @services.each_with_index do |service, index|
            # binding.pry
            puts "#{index + 1}. #{service}"
        end
    
    end

    def get_user_input
        puts "\nEnter your selection here: " 
        input = (gets.strip).to_i
        binding.pry
        
    
    end

    
end