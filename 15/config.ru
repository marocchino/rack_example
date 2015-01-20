require 'rack'
require 'thin'
require './hello_rack'

run HelloRack.new
