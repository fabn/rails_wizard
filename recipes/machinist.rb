gem 'machinist', '>= 2.0.0.beta1', :group => [:development, :test]

inject_into_file "config/initializers/generators.rb", :after => "Rails.application.config.generators do |g|\n" do
  "    g.fixture_replacement :machinist\n"
end

after_bundler do
  generate 'machinist:install'
end

__END__

name: Machinist
description: "Use Machinist to replace fixtures with factories."
author: fabn

exclusive: factories
category: testing
run_after: [rspec]
requires: [rspec]
tags: [fixtures,factories]
