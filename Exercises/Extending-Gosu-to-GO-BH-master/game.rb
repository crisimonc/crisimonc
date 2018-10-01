require_relative 'belva2d'

# define the game
game = Belva2D.new(640,480,"First Game")
#-------------------------------------------------------
# put game logic there
snake = GameObject.new("Snake", Vector2D.zero)
# Calls the add component method on snake by passing as parameter a Sprite instance, which requires the img path and number of pixels
snake.AddComponent(Sprite.new("pink_ball.jpg", 64))

camera = GameObject.new("Camera", Vector2D.zero)
camera.AddComponent(Camera.new(1))

snake.AddComponent(Movement.new)

Belva2D.Instantiate(snake)
Belva2D.Instantiate(camera)


#end the game logic
#--------------------------------------------------------
game.show
#run the game

