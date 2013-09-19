# app.rb

require 'sinatra'
require_relative 'helper'

# class PlateCalculator(weight_with_bar)

# end

get '/' do
  erb :index
end

# post '/calculate/:set1' do

# end

post '/calculate' do
  @weight1 = params[:set1]
  @set = plate_calculator(@weight1,@weight_set)

  erb :calculate
end



