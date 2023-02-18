extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var speed = 200
# Called when the node enters the scene tree for the first time.
func _ready():
	pass# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_up"):
		position += Vector2.UP * speed * delta
		$AnimationPlayer.play("walking up")
		
	elif Input.is_action_pressed("ui_down"):
		position += Vector2.DOWN * speed * delta
		$AnimationPlayer.play("walking down")

	elif Input.is_action_pressed("ui_left"):
		position += Vector2.LEFT * speed * delta
		$AnimationPlayer.play("walking left")
		
	elif Input.is_action_pressed("ui_right"):
		position += Vector2.RIGHT * speed * delta
		$AnimationPlayer.play("walking right")
		
	else :
		$AnimationPlayer.play("Idle")
