require './lib/board'

class Robot
  attr_reader :current_decision

  def initialize
    @current_decision = 'a'
  end

  def make_decision(board)
    num_to_letter_map = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
    random_number = rand(0..6)
    column_choice = num_to_letter_map[random_number]
    @current_decision = column_choice
    puts "robots decision: \"#{current_decision}\", contents of the place robot chose: #{board.contents[0][random_number]}"
    if board.is_occupied?(0, random_number) == true
      self.make_decision(board)
    else
      puts "\n" 
    end
  end
end