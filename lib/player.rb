class Player

attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def your_move(move)
    @move = move
  end

end
