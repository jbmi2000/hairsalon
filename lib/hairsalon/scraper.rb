class Hairsalon::Scraper
    
    def styles
        html = "http://cieloshairdesign.com/our_services"
        doc = Nokogiri::HTML(open(html))   
        
       
    end
    binding.pry
end
