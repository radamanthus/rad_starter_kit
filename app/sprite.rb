class Sprite
  attr_accessor :x, :y, :width, :height, :image_filename, :frame_count, :current_frame, :frame_speed, :life_countdown

  def initialize(params)
    @x = params[:x]
    @y = params[:y]
    @width = params[:width]
    @height = params[:height]
    @image_filename = params[:image_filename]
    @frame_count = params[:frame_count]
    @current_frame = 1
    @frame_speed = params[:frame_speed]
    @life_countdown = params[:life_countdown]
  end

  def render
    [x, y, width, height, image_for_current_frame]
  end

  def next_frame(tick_count)
    return unless tick_count % frame_speed == 0
    @current_frame += 1
    @current_frame = 1 if current_frame > frame_count
    @life_countdown -= 1
  end

  private

  def image_for_current_frame
    "sprites/#{image_filename}_#{current_frame}.png"
  end
end
