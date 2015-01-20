require 'rack'
require 'thin'


# run -> (env) { [200, {"Content-Type" => "text/html"}, ["Hello Rack form proc!"]] }
# def true.call(env)
#   [200, {"Content-Type" => "text/html"}, ["Hello Rack from true"]]
# end
# run true

require './hello_rack'
run HelloRack.new
