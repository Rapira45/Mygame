extends Node2D

var t = 20

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = str(t)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	print("tick")
	t -= 1
	$Label.text = str(t)
	if t == 0:
		$Label.text = ("You lose")
		$Timer.paused = true
