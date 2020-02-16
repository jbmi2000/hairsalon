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
        puts "Please select option by number for more information:\n\n"
        @services.each_with_index do |service, index|
            # binding.pry
            puts "#{index + 1}. #{service.name}"
        end
    
    end

    def get_user_input
        puts "\nEnter your selection here:\n\n" 
        input = (gets.strip).to_i
        # integer(input)
        # binding.pry        
        if valid_entry(input, @services)
            display_selection(input)
        else
            counter = 0 
            puts "Invalid entry.  Please make another selection:\n\n"
            
            get_user_input
            
            if counter == 3
                exit
            else 
            end


        end
                       
    end

    def valid_entry(input, data)
        input.to_i <= data.length && input.to_i > 0

    end

    def display_selection(input)
        service = @services[input - 1]
        puts "\nYou have chosen to receive the following service: \n\n"
        puts "#{service.name}\n\n"
        puts "Please select Y to book now, N for new selection or E to exit the application:\n\n"
        entry = gets.strip
        if entry == "y"
            #do something
        elsif entry == "n"
            puts "\n\nOK\n\n"
            run
        elsif entry == "e"
            puts "\nThank you for using our application!  Hope to see you again soon!\n\n"
            puts "Please visit on the web at our virtually unscrapable site!\n\n"
        else
        end

  
    end

    def exit
        puts "Sorry you are having trouble.  Please try again later."
        puts "Don't forget to visit us on our virutally unscrapable website!"

    end


    
end