ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default, :test)
set(:root, Dir.pwd())
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('./app')

RSpec.configure do |config|
  config.after(:each) do
    Student.all().each() do |x|
      x.destroy
    end
    Account.all().each() do |x|
      x.destroy
    end
    Fine.all().each() do |x|
      x.destroy
    end
    Reward.all().each do |x|
      x.destroy
    end
  end
end
