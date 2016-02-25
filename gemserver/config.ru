require "bundler/setup"
require "rubygems"
require "geminabox"

Geminabox.data = "/opt/docker-gems/gems"
use Rack::Auth::Basic do |username, password|
  username == ENV['USERNAME'] && password == ENV['PASSWORD']
end

run Geminabox::Server
