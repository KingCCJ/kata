class Game
  attr_reader :frame
  def initialize
    @score = 0
    @spare = 10
    @frame = Array.new(20)
    @current_frame = 0
  end
  
  def roll (pins)
    @frame[@current_frame] = pins
    @current_frame += 1
  end
  
  def score
    frame_index = 0
    while frame_index < @frame.length - 1 
      if @frame[frame_index] + @frame[frame_index + 1] == 10
        @score += 10 + @frame[frame_index+2]
      else
        @score += @frame[frame_index] + @frame[frame_index + 1]
      end
      frame_index += 2
    end

    @score

  end 
end
