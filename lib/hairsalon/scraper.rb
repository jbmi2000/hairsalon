class Hairsalon::Scraper
    
    def scrape_services
        html = "http://cieloshairdesign.com/our_services"
        doc = Nokogiri::HTML(open(html))   
        binding.pry
       
    end
    # binding.pry
end
