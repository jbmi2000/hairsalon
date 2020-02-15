class Hairsalon::Scraper
    
    def self.scrape_services
        html = "http://cieloshairdesign.com/our_services"
        doc = Nokogiri::HTML(open(html))   
         
        list = []
        list << doc.css("div.et_pb_text_inner h2")
        
        list.each do |l|
            name = l.text
            Hairsalon::Service.new(name)
           # binding.pry
        end
         
    end
    # binding.pry
end
