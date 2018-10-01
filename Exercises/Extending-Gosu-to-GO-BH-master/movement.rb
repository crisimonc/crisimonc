require_relative 'behaviour'

class Movement < Behaviour
  def initialize()
    @direction = Vector2D.zero
    super
  end

  def start
  end

  def update
  if Input.key_down?(Gosu::KB_A)
    @direction = Vector2D.new(-1, 0)
  elsif Input.key_down?(Gosu::KB_D)
    @direction = Vector2D.new(1, 0)
  elsif Input.key_down?(Gosu::KB_W)
     @direction = Vector2D.new(0, -1)
  elsif Input.key_down?(Gosu::KB_S)
    @direction = Vector2D.new(0, 1)
 end
  @gameobject.position += @direction
  end
end
