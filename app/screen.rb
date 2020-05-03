class Screen
  attr_accessor :args

  def args=(_args)
    @inputs = _args.inputs
    @outputs = _args.outputs
  end

  def tick
    render
    read_inputs
  end
end
