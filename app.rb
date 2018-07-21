require 'rubygems'
require 'sinatra'
require "awesome_print"

require_relative 'lib/productos.rb'

class App < Sinatra::Application
  

  # Allow the app to serve static files from the 'public' directory in :root
  enable :static

  def initialize
    super()
    @productos = Productos.new
  end

  get '/add' do
    haml :add
  end

  get '/bolsa' do
    haml :bolsa
  end

  #test
  get '/test' do
    haml :test
  end

  get '/modify/:id' do |id|
    @producto =  @productos.buscar(id)
    haml :modify
  end

  put '/producto/:id' do
    @producto = @productos.buscar(params[:id])
    @producto.actualiza(
        params[:nombre],
        params[:tipo],
        params[:minimo],
        params[:maximo]
    )
    @productos.guardar
    #redirect to("/")
  end

end