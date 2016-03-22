class Computer

attr_reader :name, :move

  def initialize
    @name = 'Computer'
    @move = Game::MOVE.sample
  end

end
