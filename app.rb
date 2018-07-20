require 'rubygems'
require 'sinatra'
require_relative 'lib/producto.rb'

class App < Sinatra::Application

  get '/add' do
    send_file 'views/aniadir.html'
  end

  get '/bolsa' do
    @productos = YAML.load(File.read('productos.yml'))
    haml :bolsa
  end
  
  get '/add' do 
  	
  end
end