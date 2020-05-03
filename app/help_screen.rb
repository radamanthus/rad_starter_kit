class HelpScreen < Screen

  private

  attr_accessor :inputs, :outputs

  def read_inputs
    return unless inputs.mouse.click
    $activeScreen = $mainMenu
  end

  def render
    outputs.labels << [400, 400, 'TODO: Build the contents of the Help Screen']
  end
end
