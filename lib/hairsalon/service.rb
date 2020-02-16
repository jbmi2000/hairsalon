class Hairsalon::Service

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    @@all = []

    def self.all
        Hairsalon::Scraper.scrape_services if @@all.empty?
        @@all
    end

end