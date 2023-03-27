extends Node2D

func _ready():
	var threen = Threen.new()
	add_child(threen)
	var threen_callable = func():
		threen.interpolate_property($Icon, "position",
				Vector2(0, 0), Vector2(500, 500), 2,
				Threen.TRANS_LINEAR, Threen.EASE_IN_OUT)
		threen.start()
	threen.tween_all_completed.connect(threen_callable)
	threen_callable.call()
