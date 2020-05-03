class GameScreen < Screen

  def start_game
    # Put game initialization code here
  end

  private

  attr_accessor :inputs, :outputs

  def read_inputs
    return unless inputs.mouse.click
    $activeScreen = $mainMenu
  end

  def render
    outputs.labels << [400, 400, 'TODO: Build the GAME screen']
  end
end
