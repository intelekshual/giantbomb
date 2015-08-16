# require "giantbomb/version"

# module Giantbomb
#   # Your code goes here...
# end
require 'rubygems'
require 'httparty'

['api', 'search', 'resource'].each do |inc|
  require File.join(File.dirname(__FILE__), 'giantbomb', inc)
end

['game', 'platform', 'company', 'character', 'franchise', 'concept', 'object', 'location', 'person', 'video'].each do |inc|
  require File.join(File.dirname(__FILE__), 'giantbomb', inc)
end

module GiantBomb
  # VERSION = '1.5.4'
end
