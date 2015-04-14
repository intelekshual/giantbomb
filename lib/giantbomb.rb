require 'rubygems'
require 'httparty'

["api","search","resource"].each do |inc|
  require File.join(File.dirname(__FILE__), "giantbomb", inc)
end

["game","company","character","franchise","concept","object","location","person","video"].each do |inc|
  require File.join(File.dirname(__FILE__), "giantbomb", inc)
end

module GiantBomb
  VERSION = "0.5.3"
end
