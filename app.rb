require_relative "config/application"
require_relative "models/product"
require_relative "models/category"
require "sinatra"
require "pry-byebug"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  #Get All The Products
  @products = Product.all
  erb :index
end

post '/products' do
  #Create a new Product
  # Take the params hash from the form and we build a new instance of product
  #LONG WAY
  # name = params["name"]
  # description = params["description"]
  # price = params["price"]
  # picture = params["picture"]
  # Product.create(name: name, description: description, price: price, picture: picture)
  Product.create(params)
  redirect '/'
end


get "/new" do
  @categories = Category.all
  erb :new
end












