require 'rubygems'
require 'sinatra'
require 'awesome_print'

require_relative 'lib/productos.rb'
require_relative 'lib/tools.rb'


class App < Sinatra::Application
  
  # Allow the app to serve static files from the 'public' directory in :root
  enable :static

  port = ENV['PORT'] || 8080
  puts "STARTING SINATRA on port #{port}"
  set :port, port
  set :bind, '0.0.0.0'

  def initialize
    super()
    @productos = Productos.new
  end

  get '/' do
    haml :index
  end

  get '/conf' do
    haml :conf
  end

  # Vista para añadir un nuevo producto
  get '/add' do
    haml :add
  end

  # Añade el producto al array
  post '/add' do
    @productos.add( Producto.new(
      params[:nombre],
      params[:tipo],
      params[:minimo],
      params[:maximo]
    ))
    @productos.guardar
    redirect to("/conf")
  end

  # Elimina el producto indicado
  get '/delete/:id' do |id|
    @productos.delete(id)
    redirect to("/conf")
  end

  # Vista para modificar las propiedades del producto indicado
  get '/modify/:id' do |id|
    @producto =  @productos.buscar(id)
    haml :modify
  end

  # Actualiza el valor de un producto en el array
  put '/producto/:id' do
    @producto = @productos.buscar(params[:id])
    @producto.actualiza(
        params[:nombre],
        params[:tipo],
        params[:minimo],
        params[:maximo]
    )
    @productos.guardar
    redirect to("/conf")
  end

  # Muestra el estado de los productos
  post '/bolsa' do
    esp = Integer(params[:espera]) 
    if esp <= 180
      @espera = esp.milisegundos
    else 
      @espera = esp
    end

    unless params[:caida].nil?
      @productos.precios_minimos 
    else
      @productos.genera_precios
    end

    case params[:pantalla]
    when "racion"
      @tipos = @productos.raciones
      @tam_col = 4
      @gr = 1
    when "copas"
      @tipos = @productos.copas
      @tam_col = 4
      @gr=2
    else
      @tipos = @productos.completo
      @tam_col = 3
      @gr=2
    end

    haml :bolsa
  end
  

end