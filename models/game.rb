class Game

  attr_reader :action1, :action2

  def initialize(action1, action2)
    @action1 = action1
    @action2 = action2
  end

  def return_winner()
    action_arr = [action1, action2]
    if @action1 == @action2
      return "Draw."
    elsif action_arr.include?("rock") && action_arr.include?("scissors")
      index = action_arr.index("rock")
      return "Player #{index + 1} wins with Rock!"
    elsif action_arr.include?("rock") && action_arr.include?("paper")
      index = action_arr.index("paper")
      return "Player #{index + 1} wins with Paper!"
    elsif action_arr.include?("paper") && action_arr.include?("scissors")
      index = action_arr.index("scissors")
      return "Player #{index + 1} wins with Scissors!"
    end
  end 

end 