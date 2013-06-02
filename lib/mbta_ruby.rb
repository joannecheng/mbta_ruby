require "mbta_ruby/version"
require "mbta_ruby/subway"
require "mbta_ruby/commuter_rail"
require "mbta_ruby/bus"
require "mbta_ruby/boat"
require 'typhoeus'
require "json"

module MBTA
  API_KEY = ENV['MBTA_API_KEY']
end
