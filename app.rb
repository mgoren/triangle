require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/triangle')

get('/') do

  erb(:index)

end

get('/triangle') do
  @side1 = params.fetch('side1')
  @side2 = params.fetch('side2')
  @side3 = params.fetch('side3')
  test_triangle = Triangle.new(@side1.to_i, @side2.to_i, @side3.to_i)
  @type = test_triangle.type()
  erb(:triangle)
end
