class ConsumeController < ApplicationController
  require 'rubygems'
  require 'rest_client'

  def list
    
    @greeting = "Dia Dhuit"
    
    #@res = RestClient.get 'https://api.discogs.com/releases/249504'
    @res = RestClient.get 'https://jsonplaceholder.typicode.com/posts'
   
    #@res = RestClient.get 'https://api.discogs.com/', :releases => '249504'
    #@res = RestClient.get("http://en.wikipedia.org/wiki")
    @res.code                    # => 200
    @res.headers[:content_type]  # => 'image/jpg'
    @data = JSON.parse(@res.body)
    
  end
end
