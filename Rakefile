begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "pushy-api"
    gemspec.summary = "Client library for the Pushy API"
    gemspec.description = "Pushy makes the Apple push notification service easy. Just use our API and we handle everything else."
    gemspec.email = "charlie@pushyapp.com"
    gemspec.homepage = "http://github.com/pushy/pushy-ruby"
    gemspec.authors = ["Charlie Melbye"]
    
    gemspec.files =  FileList["[A-Z]*", "{bin,generators,lib,test}/**/*"]
    gemspec.add_dependency('httparty', '>= 0.5.2')
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end
