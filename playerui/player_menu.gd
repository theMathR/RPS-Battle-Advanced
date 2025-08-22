extends VBoxContainer
class_name Player

enum Action {NONE, ROCK, PAPER, SCISSORS}

var hp: int = 20:
	set(value):
		hp = max(0,value)
		$HP.text = "HP: " + str(hp)
var combo: int = 0:
	set(value):
		combo = max(0,value)
		$Combo.text = "Combo: " + str(combo)

var action: Action

func _ready() -> void:
	hp = 20
	combo = 0
	action = Action.NONE
	$Action.text = ""
	
func tick() -> void:
	$Action.text = ['Nothing.', 'Rock!', 'Paper!', 'Scissors!'][action]
