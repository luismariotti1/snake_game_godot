extends Node2D

const pixel_size = 40
const block_size = Vector2(pixel_size,pixel_size)
const start_position = Vector2(2,5)
var snake_color = Color8(68, 113, 230)
var x_direction = 1
var y_direction = 0
var player_position = start_position
var speed = 2.4
var timer = 0
var move = false
var size = 0
var change_direction = false
var start_move = false

# Called when the node enters the scene tree for the first time.
func _ready():
	set_position(Vector2(180,40))
#	pass # Replace with function body.

## Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timer += speed * delta
	if timer >= 1:
		move = true
		timer = 0
	if(x_direction == 1 and move):
		player_position.x += 1
		move = false
		start_move = false
	if(x_direction == -1 and move):
		player_position.x += -1
		move = false
		start_move = false
	if(y_direction == 1 and move):
		player_position.y += 1
		move = false
		start_move = false
	if(y_direction == -1 and move):
		player_position.y += -1
		move = false
		start_move = false
	update()

func _input(event):
	if(!start_move):
		if Input.is_action_pressed("ui_left") and x_direction != 1:
			x_direction = -1
			y_direction = 0
			start_move = true
		if Input.is_action_pressed("ui_right") and x_direction != -1:
			x_direction = 1
			y_direction = 0
			start_move = true
		if Input.is_action_pressed("ui_down") and y_direction != -1:
			y_direction = 1
			x_direction = 0
			start_move = true
		if Input.is_action_pressed("ui_up") and y_direction != 1:
			y_direction = -1
			x_direction = 0
			start_move = true

func position_to_world(pos):
	return pos * 20;

func _draw():
	draw_rect(Rect2(position, block_size), snake_color)
	draw_circle(position, 10, ColorN('black'))
