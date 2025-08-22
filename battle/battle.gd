extends HBoxContainer

signal battle_end(is_won: bool)

func start() -> void:
	$Player1._ready()
	$Player2._ready()
	$Timer.start()


func tick() -> void:
	$Player1.tick()
	$Player2.tick()

	attack($Player1, $Player2)
	attack($Player2, $Player1)
	
	if $Player1.hp == 0:
		$Timer.stop()
		battle_end.emit(false)
	if $Player2.hp == 0:
		$Timer.stop()
		battle_end.emit(true)
	
	$Player1.action = Player.Action.NONE
	$Player2.action = Player.Action.NONE

func attack(who: Player, against_who: Player) -> void:
	if check_win(who.action, against_who.action):
		who.combo += 1
		against_who.hp -= who.combo
	else:
		who.combo = 0

func check_win(what: Player.Action, against_what: Player.Action) -> bool:
	if what == Player.Action.NONE: return false
	if against_what == Player.Action.NONE: return true
	return [0, Player.Action.SCISSORS, Player.Action.ROCK, Player.Action.PAPER][what] == against_what
