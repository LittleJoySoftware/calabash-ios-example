source 'https://rubygems.org'

# use bundle and bundle config to specify local gem locations
# bundle config local.GEM_NAME /path/to/local/git/repository

username = `whoami`.strip

#noinspection GemInspection
case username

  when 'moody'

    gem 'briar', :github => 'jmoody/briar', :branch => '0.1.4'
    gem 'calabash-cucumber', :github => 'jmoody/calabash-ios', :branch => 'jgallagher-add-keychain-support'

  when 'your username here'

  else
    gem 'briar', '0.1.4.b1'
end
