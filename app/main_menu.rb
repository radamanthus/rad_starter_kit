class MainMenu < Screen
  NEW_GAME_BUTTON = [550, 465, 200, 50]
  HELP_BUTTON = [550, 365, 200, 50]
  ABOUT_BUTTON = [550, 265, 200, 50]

  BUTTON_WIDTH = 200
  BUTTON_HEIGHT = 50
  BUTTON_X_OFFSET = 20
  BUTTON_Y_OFFSET = 35

  private

  attr_accessor :inputs, :outputs
  attr_accessor :new_game_button, :help_button, :about_button

  def draw_button(x, y, width, height, text)
    button = [x, y, width, height]
    outputs.labels << [x + BUTTON_X_OFFSET, y + BUTTON_Y_OFFSET, text]
    outputs.borders << button
  end

  def read_inputs
    return unless inputs.mouse.click
    if inputs.mouse.click.inside_rect? NEW_GAME_BUTTON
      $activeScreen = $gameScreen
      $gameScreen.start_game
    elsif inputs.mouse.click.inside_rect? HELP_BUTTON
      $activeScreen = $helpScreen
    elsif inputs.mouse.click.inside_rect? ABOUT_BUTTON
      $activeScreen = $aboutScreen
    end
  end

  def render
    draw_button(NEW_GAME_BUTTON[0], NEW_GAME_BUTTON[1], BUTTON_WIDTH, BUTTON_HEIGHT, 'New Game')
    draw_button(HELP_BUTTON[0], HELP_BUTTON[1], BUTTON_WIDTH, BUTTON_HEIGHT, 'Help')
    draw_button(ABOUT_BUTTON[0], ABOUT_BUTTON[1], BUTTON_WIDTH, BUTTON_HEIGHT, 'About')
  end
end
