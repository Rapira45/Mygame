extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event: InputEvent) -> void:
	#print(event)
	
	if event is InputEventKey:
		if event.pressed:
			if event.keycode==KEY_W:
				self.position.y -= 10
			if event.keycode==KEY_S:
				self.position.y += 10
			if event.keycode==KEY_A:
				self.position.x -= 10
			if event.keycode==KEY_D:
				self.position.x += 10
			


func _on_area_entered(area: Area2D) -> void:
	area.queue_free()
