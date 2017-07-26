class ConsumeController < ApplicationController
  require 'rubygems'
  require 'rest_client'
  require 'twilio-ruby'

  def list
    
    @greeting = "Dia Dhuit"
    
    @res = RestClient.get 'https://jsonplaceholder.typicode.com/posts'
    @res.code                   
    @res.headers[:content_type] 
    @data = JSON.parse(@res.body)
    
    # put your own credentials here
    account_sid = 'ACe71618d0c3d35737520ef424047a1f41'
    auth_token = '338e0bfc2c032a89f4cb74553a7aaba8'

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new(account_sid, auth_token)
    
    @message = @client.messages.create(
      from: '+353861802780',
      to: '+353877963817',
      body: 'This is the ship that made the Kessel Run in fourteen parsecs?',
      status_callback: request.base_url + '/message_statuses'
    )
  
  end
end
