require 'rubygems'
require 'httparty'

require 'giantbomb/version'

module GiantBomb

  ['api', 'search', 'resource'].each do |inc|
    require File.join(File.dirname(__FILE__), 'giantbomb', inc)
  end

  ['game', 'platform', 'company', 'character', 'franchise', 'concept', 'object', 'location', 'person', 'video'].each do |inc|
    require File.join(File.dirname(__FILE__), 'giantbomb', inc)
  end
end
