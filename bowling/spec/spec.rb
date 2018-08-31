require_relative "../lib/bowling"

RSpec.describe "Game" do 
  context "score" do 
    it "score is 0 if no point are tallied" do
      game = Game.new
      20.times {game.roll(0)}
      expect(game.score).to eq 0
    end
    it "score is 20 if 1 pin is hit each turn" do
      game = Game.new
      20.times {game.roll(1)}
      expect(game.score).to eq 20
    end
    it "can score a spare" do
      game = Game.new
      game.roll(5)
      game.roll(5)
      18.times {game.roll(1)}
      expect(game.score).to eq 29
    end
    it "can score 2 spares" do
      game = Game.new
      game.roll(5)
      game.roll(5)
      game.roll(6)
      game.roll(4)
      16.times {game.roll(3)}
      p game.frame.length
      expect(game.score).to eq 77
    end
    it "can score 2 spares" do
      game = Game.new
      game.roll(5)
      game.roll(5)
      2.times {game.roll(3)}
      game.roll(6)
      game.roll(4)
      14.times {game.roll(3)}
      p game.frame.length
      expect(game.score).to eq 74
    end
  end  
end
