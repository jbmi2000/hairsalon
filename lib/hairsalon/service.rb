class Hairsalon::Service

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

   # @@all = ['Haircut', 'Chemical Service', 'Makeup'] 
   @@all = []

    def self.all
        Hairsalon::Scraper.scrape_services if @@all.empty?
        @@all
      
      #  binding.pry
    end

end