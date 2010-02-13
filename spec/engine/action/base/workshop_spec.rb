require 'spec_helper'

describe Workshop do
  
  it 'should execute' do
    game = GameFactory.build
    player = game.players.first
    turn = Turn.new game, player
    workshop = Workshop.new
    copper = game.coppers.first
    workshop.stub!(:select_card).and_return(copper)
    turn.execute workshop
    player.discard.first.should == copper
    game.coppers.size.should == 31
  end
  
end