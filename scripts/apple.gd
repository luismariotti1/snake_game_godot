extends Control

const pixel_size = 40
const block_size = Vector2(pixel_size,pixel_size)
var apple_color = Color8(231, 71, 29)
var position = Vector2(7,5)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

		
func position_to_world(pos):
	return pos * 40;

func _draw():
	draw_rect(Rect2(position_to_world(position), block_size), apple_color)
