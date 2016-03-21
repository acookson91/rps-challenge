require './lib/player.rb'

describe Player do

  subject(:player){described_class.new(name)}
  let(:your_move){double:your_move}
  let(:name){double:name}

  it 'stores a players move' do
    player.your_move(your_move)
    expect(player.move).to eq your_move
  end
end
