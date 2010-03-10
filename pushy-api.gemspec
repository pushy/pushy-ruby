# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pushy-api}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Charlie Melbye"]
  s.date = %q{2010-03-09}
  s.description = %q{Pushy makes the Apple push notification service easy. Just use our API and we handle everything else.}
  s.email = %q{charlie@pushyapp.com}
  s.files = [
    "Rakefile",
     "VERSION",
     "lib/pushy.rb",
     "lib/pushy/application.rb"
  ]
  s.homepage = %q{http://github.com/pushy/pushy-ruby}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Client library for the Pushy API}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0.5.2"])
    else
      s.add_dependency(%q<httparty>, [">= 0.5.2"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0.5.2"])
  end
end

