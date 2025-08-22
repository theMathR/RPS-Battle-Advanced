extends TextureProgressBar

func _process(delta: float) -> void:
	value = 100. * $"../Timer".time_left / $"../Timer".wait_time
