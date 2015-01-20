require 'logger'

class HelloRack
  attr_reader :logger
  def initialize
    @logger = Logger.new(STDOUT)
  end

  def call(env)
    logger.debug { env.inspect }
    if env["REQUEST_PATH"] == "/bye"
      [200, {"Content-Type" => "text/html"}, ["Bye Rack!"]]
    else
      [200, {"Content-Type" => "text/html"}, ["Hello Rack!"]]
    end
  end

end

