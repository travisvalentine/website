require 'rubygems'
require 'bundler/setup'
Bundler.require
require 'sinatra'
require 'sinatra/link_header'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

error do
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application error'
end

helpers do
  Sinatra::LinkHeader
end

get '/' do
  erb :index
end