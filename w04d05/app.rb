require 'bundler'
Bundler.require

require_relative 'lib/router'

$LOAD_PATH.unshift File.expand_path('lib', __dir__)

Router.new.run
