class Hairsalon::HairsalonController

    def run
        puts "\n\nWelcome to your Hair Salon Experience\n\n"
        
        get_services_menu
        get_prices_menu
        list_services_menu
        get_user_input
                
    end

    def get_services_menu
        @services = Hairsalon::Service.all
       
    end

    def get_prices_menu
        @prices = Hairsalon::Price.all
    end


    def list_services_menu
        puts "Please select your desired service by number, then press <Enter>:\n"
        puts "=================================================================\n"
        @services.each_with_index do |service, index|
            puts "#{index + 1}. #{service.name}"
        end
    
    end

    def get_user_input
        puts "\nEnter your selection here:\n" 
        input = (gets.strip).to_i

        if valid_entry(input, @services)
            if input == 1
                puts Hairsalon::Scraper.scrape_hair_services
                display_selection(input)

            elsif input == 2
                puts Hairsalon::Scraper.scrape_color_services
                display_selection(input)

            elsif input == 3
                puts Hairsalon::Scraper.scrape_hair_treatment_services
                display_selection(input)

            elsif input == 4
                puts Hairsalon::Scraper.scrape_makeup_services                
                display_selection(input)

            end
         #   display_selection(input)
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
        puts "\nBook your #{service.name} appointment from the list of services above"
        puts "=============================================================================\n\n"
       # puts "#{service.name}\n\n"
        puts "Please choose from the following options and press <Enter>:"
        puts "==========================================================="
        puts "Select Y to book your appointment and exit the application"
        puts "Select N to make a new selection" 
        puts "Select E to exit the application\n"
        entry = gets.strip
        if entry == "y"
           Hairsalon::Appointment.new(@date, @time, @customer, @stylist)
           puts "Thank you for booking your appointment.  The program will now exit.\n\n"
        elsif entry == "n"
            puts "\n\nOK\n\n"
            run
        elsif entry == "e"
            puts "\nThank you for using our application!  Hope to see you again soon!\n\n"
            puts "Please visit us on the web at our virtually unscrapable site!\n\n"
        else
        end

  
    end

    # def exit
    #     puts "Sorry you are having trouble.  Please try again later."
    #     puts "Don't forget to visit us on our virutally unscrapable website!"

    # end


    
end