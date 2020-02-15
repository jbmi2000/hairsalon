class Hairsalon::Service

    attr_accessor :name

    def initialize(name)
        @name = name
        save 
    end

   # @@all = ['Haircut', 'Chemical Service', 'Makeup'] 
   @@all = []

    def self.all
        Hairsalon::Scraper.scrape_services
        @@all
    end

    def save
        @@all << self
    end
end