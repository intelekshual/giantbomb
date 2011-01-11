require 'rubygems'
require 'httparty'

["api", "search", "game", "company"].each do |inc|
  require File.join(File.dirname(__FILE__), "giantbomb", inc)
end

module GiantBomb
  VERSION = "0.0.1"
end