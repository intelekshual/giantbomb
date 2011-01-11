require 'rubygems'
require 'httparty'

["api", "search", "resource", "game", "company", "character", "franchise", "concept"].each do |inc|
  require File.join(File.dirname(__FILE__), "giantbomb", inc)
end

module GiantBomb
  VERSION = "0.1.0"
end