require_relative "./version"
require 'pry'
require 'httparty'
require 'wix-apps'
require 'nokogiri'
require_relative './api'
require_relative './hairsalon'
require_relative './hairsalon_controller'


module Hairsalon
  class Error < StandardError; end
  # Your code goes here...
end
