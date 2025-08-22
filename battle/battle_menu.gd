extends Control

func _ready() -> void:
	$Gray.show()
	$Ready.show()

func play() -> void:
	$Gray.hide()
	$Main.start()

func _on_battle_end(is_won: bool) -> void:
	$Gray.show()
	if is_won:
		$Win.show()
	else:
		$Lost.show()
