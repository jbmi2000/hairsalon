class Hairsalon::Scraper
    
    def self.scrape_services
        html = "http://cieloshairdesign.com/our_services"
        doc = Nokogiri::HTML(open(html))   
                
        doc.css("div.et_pb_text_inner ul li").slice(0..6).each do |items| 
             name = items.text
             Hairsalon::Service.new(name)
        end
    
    

     end
     # binding.pry

   

    # binding.pry
end
