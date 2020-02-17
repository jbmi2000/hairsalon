class Hairsalon::Scraper

    # attr_accessor :name, :services, :prices

    def self.scrape_services
        html = "http://cieloshairdesign.com/our_services"
        doc = Nokogiri::HTML(open(html))   
                
        doc.css("div.et_pb_text_inner h2").slice(0..3).each do |items| 
             name = items.text
             Hairsalon::Service.new(name)
        end

     end

    #  def self.scrape_prices
    #     html = "http://cieloshairdesign.com/our_services"
    #     page = Nokogiri::HTML(open(html))   
    #      binding.pry       
    #     page.css("div.et_pb_text_inner ul").slice(0..6).each do |items| 
    #          list = items.text
    #          Hairsalon::Price.new(list)
    #     end
# binding.pry
    

     def self.scrape_hair_services
        html = "http://cieloshairdesign.com/our_services"
        page = Nokogiri::HTML(open(html))
        page.css("div.et_pb_text_inner ul")[0].children.text
     end

     def self.scrape_color_services
        html = "http://cieloshairdesign.com/our_services"
        page = Nokogiri::HTML(open(html))
        page.css("div.et_pb_text_inner ul")[1].children.text
     end

     def self.scrape_hair_treatment_services
        html = "http://cieloshairdesign.com/our_services"
        page = Nokogiri::HTML(open(html))
        page.css("div.et_pb_text_inner ul")[2].children.text
     end

     def self.scrape_makeup_services
        html = "http://cieloshairdesign.com/our_services"
        page = Nokogiri::HTML(open(html))
        page.css("div.et_pb_text_inner ul")[3].children.text
     end

    end
# scrape Hair Services
# scrape Color Services
# scrape Hair Treatment Services
# scrape Makeup Services

# def scrape_hair_services  page.css("div.et_pb_text_inner ul")[0].children.text
# def scrape_color_services page.css("div.et_pb_text_inner ul")[1].children.text
# def scrape_hair_treatment page.css("div.et_pb_text_inner ul")[2].children.text
# def scrape_makeup_services page.css("div.et_pb_text_inner ul")[3].children.text
