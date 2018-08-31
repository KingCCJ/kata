require "bowling"

RSpec.describe Game, "when bowling" do
	let(:bowling) { Game.new }
	describe "#score" do 
		it "all gutters result to a score of 0" do
			20.times do 
				bowling.roll(0)
			end
			expect(bowling.score).to eq 0

		end

		it "20 rolls of one equals score of 20" do
			20.times do 
				bowling.roll(1)
			end
			expect(bowling.score).to eq 20
		end

		it "one spare equals 10 points in a frame" do
			4.times do 
				bowling.roll(5)
			end
			expect(bowling.score).to eq 25 
		end

		it "one strike..."
		end
		
end
