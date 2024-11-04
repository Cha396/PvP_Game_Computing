extends Node

var score = 0

@onready var score_label = $ScoreLabel

func add_point():
	score += 1
	score_label.text = "You collected " + str(score) + " coins."

func become_host():
	print("Become Host Pressed")
	%"Multiplayer HUD".hide()
	MultiplayerManager.become_host()

func join_as_player_two():
	print("Join as player Two")
	%"Multiplayer HUD".hide()
	MultiplayerManager.join_as_player_2()
