extends Player

func _ready() -> void:
	$Name.text = "Player"

func _process(delta: float) -> void:
	if Input.is_action_pressed("rock"):
		action = Action.ROCK
	if Input.is_action_pressed("paper"):
		action = Action.PAPER
	if Input.is_action_pressed("scissors"):
		action = Action.SCISSORS
