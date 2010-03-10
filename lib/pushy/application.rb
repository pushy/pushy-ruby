module Pushy
  class Application
    include HTTParty
    base_uri 'pushyapp.com/api/v1'
    format :json
    
    def initialize(args)
      # We are using the hash argument idea from Rails
      raise TypeError, 'Argument must be a hash' unless args.is_a? Hash
      
      # Converting all the args keys to symbols
      args.each_pair do |k,v|
        args.delete(k)
        args[k.to_sym] = v if k.respond_to? :to_sym
      end
      
      @api_key = args[:api_key]
      @api_secret = args[:api_secret]
      
      raise ArgumentError, 'No API key specified' unless @api_key
      raise ArgumentError, 'No API secret specified' unless @api_secret
      raise TypeError, ":api_key must be a String" unless @api_key.is_a? String
      raise TypeError, ":api_secret must be a String" unless @api_secret.is_a? String
      
      self.class.basic_auth @api_key, @api_secret
    end
    
    def new_device(device_token, device_alias="")
      params = {}
      
      params[:token] = device_token
      params[:alias] = device_alias if device_alias
      
      self.class.post('/devices.json', :body => params)
    end
    
    def send_notification(payload, options)
      params = {}
      
      params[:alert] = payload[:alert] if payload[:alert]
      params[:badge] = payload[:badge] if payload[:badge]
      params[:sound] = payload[:sound] if payload[:sound]
      
      if options[:aliases].is_a? Array
        options[:aliases].each do |the_alias|
          params["aliases[]"] = the_alias
        end
      end
      
      if options[:tokens].is_a? Array
        options[:tokens].each do |the_token|
          params["tokens[]"] = the_token
        end
      end
            
      self.class.post('/notifications.json', :body => params)
    end
  end
end