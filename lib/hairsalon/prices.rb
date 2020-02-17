class Hairsalon::Price

    attr_accessor :price, :page, :name

   

    def initialize(price)
        @price = price
        @name = name
        @page = page
        @@all << self
    end

    @@all = []

    def self.all
 #       Hairsalon::Scraper.scrape_prices if @@all.empty?
        @@all
    end



end