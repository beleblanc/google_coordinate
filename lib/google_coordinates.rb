require "google_coordinates/version"
require 'httparty'

%w(client job worker location schedule custom_field_def).each do |file|
  require File.join(File.dirname(__FILE__),'google_coordinates',file)
end

module GoogleCoordinates
  class << self
    
    attr_accessor :api_key
    
    def configuration
      yield self
    end 
     
  end
end
