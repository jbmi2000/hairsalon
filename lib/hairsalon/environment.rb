require_relative "./version"
require 'pry'
require 'httparty'
require 'wix-apps'
require 'nokogiri'
require 'open-uri'
require_relative './api'
require_relative './hairsalon'
require_relative './hairsalon_controller'
require_relative './scraper'


module Hairsalon
  class Error < StandardError; end
  # Your code goes here...
end
