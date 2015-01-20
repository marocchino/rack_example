class MiddleRack
  attr_reader :app

  def initialize(app)
    @app = app
  end

  def call(env)
    if  env["HTTP_X_NAME"] == "waldo"
      [200, {"Content-Type" => "text/html"}, ["안녕하신가! 힘쌔고 강한 아침!"]]
    else
      result = app.call(env)
      result[2][0] += " Added by MiddleRack"
      result
    end
  end
end
