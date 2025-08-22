extends Player


func _ready() -> void:
	$Name.text = "AI"
	
func tick() -> void:
	action = randi_range(1, 3)
	super.tick()
