class Hairsalon::HairsalonController

    # def initialize   everything puts'ed out from this class only.  And only user input in this class.
    #    self.run
    # end

    def run
        puts "Welcome to your Hair Salon Experience\n\n"
        puts "Please select option 1, 2, or 3 for more information"
        get_services_menu
        # input = gets.strip

        
    end

    def get_services_menu
        # to be scraped
        @services = ['Haircut', 'Chemical Service', 'Makeup'] 
        @services.each_with_index do |service, index|
            # binding.pry
            puts "#{index + 1}. #{service}"
        end

        


    end

    def menu
      
           
       
    
    
    end

    
end