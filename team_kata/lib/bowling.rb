class Game
	attr_reader :score, :frame_count, :frame_roll, :spare

	def initialize
		@score = 0
		@frame_count = 0
		@frame_roll = 1
		@spare = false
	end

	def roll(pins = rand(10))
		if @frame_roll == 1
			@score
		end

		if spare
			@score += 2 * pins
		else
			@score += pins
		end
	end

	def spare
		roll
	end
end