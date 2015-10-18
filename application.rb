require 'rubygems'
require 'bundler/setup'
Bundler.require
require 'sinatra'
require 'sinatra/link_header'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"

  # so the semantic theme preview URLs can be included as iFrames
  set :protection, except: [:frame_options]
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

# Semantic minimal-slide theme routes
get '/semantic-themes/minimal-slide/index.html' do
  send_file 'views/semantic-themes/minimal-slide/index.html'
end

get '/semantic-themes/minimal-slide/about.html' do
  send_file 'views/semantic-themes/minimal-slide/about.html'
end

get '/semantic-themes/minimal-slide/contact.html' do
  send_file 'views/semantic-themes/minimal-slide/contact.html'
end