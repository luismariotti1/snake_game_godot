extends Control

const pixel_size = 40
const block_size = Vector2(pixel_size,pixel_size)
var color_1 = Color8(162, 209, 73)
var color_2 = Color8(170, 215, 81)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _draw():
	# a matrix with 10 rows and 10 columns that interpolates between color_1 and color_2
	for i in range(10):
		for j in range(10):
			if j % 2 == 0:
				if i % 2 == 0:
					draw_rect(Rect2(Vector2(i*pixel_size,j*pixel_size), block_size), color_1)
				else:
					draw_rect(Rect2(Vector2(i*pixel_size,j*pixel_size), block_size), color_2)
			else:
				if !(i % 2 == 0):
					draw_rect(Rect2(Vector2(i*pixel_size,j*pixel_size), block_size), color_1)
				else:
					draw_rect(Rect2(Vector2(i*pixel_size,j*pixel_size), block_size), color_2)				
