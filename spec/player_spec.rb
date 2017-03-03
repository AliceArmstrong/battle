require 'player'

describe Player do
  it 'checks that an instance of the class has been created' do
    players = Player.new("player1")
    expect(players).to eq players
  end
end
