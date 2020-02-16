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
        puts "Please select your desired service by number.\nThen press the <Enter> key for more information:\n"
        puts "================================================\n"
        @services.each_with_index do |service, index|
            # binding.pry
            puts "#{index + 1}. #{service.name}"
        end
    
    end

    def get_user_input
        puts "\nEnter your selection here:\n\n" 
        input = (gets.strip).to_i

        if valid_entry(input, @services)
            display_selection(input)
        else
            puts "Invalid entry.  Please make another selection:\n\n"
            get_user_input 
        end                       
    end

    def valid_entry(input, data)
        input.to_i <= data.length && input.to_i > 0

    end

    def display_selection(input)
        service = @services[input - 1]
        puts "\nYou have chosen to receive the f.ollowing service: \n\n"
        puts "#{service.name}\n\n"
        puts "Please choose from the following options and press <Enter>:"
        puts "Select Y to book you appointment"
        puts "select N to make a new selection" 
        puts "Select E to exit the application"
        entry = gets.strip
        if entry == "y"
           # binding.pry
           Hairsalon::Appointment.new(@date, @time, @customer, @stylist)
           puts "Thank you for booking your appointment.  The program will not exit."
           # binding.pry 
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