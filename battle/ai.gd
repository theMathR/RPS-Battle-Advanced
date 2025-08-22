extends Player


func _ready() -> void:
	$Name.text = "AI"
	super._ready()
	
func tick() -> void:
	action = randi_range(1, 3)
	super.tick()
