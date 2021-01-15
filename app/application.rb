class Application
  def call(_env)
    resp = Rack::Response.new

    num_one = Kernel.rand(1..20)
    num_two = Kernel.rand(1..20)
    num_three = Kernel.rand(1..20)

    resp.write "#{num_one} - #{num_two} - #{num_three}\n"
    if num_one == num_two && num_two == num_three
      resp.write 'You Win'
    else
      resp.write 'You Lose. Better Luck Next time.'
    end

    resp.finish
  end
end
