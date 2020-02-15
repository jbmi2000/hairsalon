class Hairsalon::Scraper
    
    def self.scrape_services
        html = "http://cieloshairdesign.com/our_services"
        doc = Nokogiri::HTML(open(html))   
         
        list = []
        list << doc.css("div.et_pb_text_inner h2").text
        
        list.each do |l|
            Hairsalon::Service.new(name)
        end
        binding.pry
    end
    # binding.pry
end
