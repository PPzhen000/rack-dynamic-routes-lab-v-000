class Application

  @@items = [Item.new("Figs",3.42), Item.new("Pears",0.99)]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/item/)
      @@items.each do |item|
      resp.write "#{item.price}"
      end
    elsif
    end
    resp.finish
  end
end
