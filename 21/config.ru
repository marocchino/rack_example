require 'rack'
require 'thin'
require './hello_rack'
require './middle_rack'

use MiddleRack
run HelloRack.new
