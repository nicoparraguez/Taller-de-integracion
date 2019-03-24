class AppController < ApplicationController
  include HTTParty
  helper_method :devolver_nombre
  helper_method :devolver_titulo

  def index
    data = HTTParty.get('https://swapi.co/api/films',verify: false , format: :json)
    @peliculas = data['results']

  
  end

  def peliculas
    dato = HTTParty.get(params[:url],verify: false , format: :json)
    asa = []
    asa << dato
    @dato = asa

  end

  def personajes
    dato = HTTParty.get(params[:url],verify: false , format: :json)
    asa = []
    asa << dato
    @dato = asa
  end

  def planetas
    dato = HTTParty.get(params[:url],verify: false , format: :json)
    asa = []
    asa << dato
    @dato = asa
  end

  def naves
    dato = HTTParty.get(params[:url],verify: false , format: :json)
    asa = []
    asa << dato
    @dato = asa
  end

  def devolver_nombre(url)
    dato = HTTParty.get(url,verify: false, format: :json)
    nombre = dato["name"]
    return nombre
  end

  def devolver_titulo(url)
    dato = HTTParty.get(url,verify: false, format: :json)
    nombre = dato["title"]
    return nombre
  end

end

