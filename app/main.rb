# Reusable classes
require 'app/sprite.rb'
require 'app/screen.rb'

# Game Screens
require 'app/about_screen.rb'
require 'app/game_screen.rb'
require 'app/help_screen.rb'
require 'app/main_menu.rb'

$mainMenu = MainMenu.new
$gameScreen = GameScreen.new
$helpScreen = HelpScreen.new
$aboutScreen = AboutScreen.new

$activeScreen = $mainMenu

def tick args
  $activeScreen.args = args
  $activeScreen.tick
end

$gtk.reset
