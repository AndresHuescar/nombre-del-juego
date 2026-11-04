extends Node2D

# 1. Arranca el temporizador en cuanto empieza la escena
func _ready() -> void:
	$RoundTimer.start()

# 2. Reacciona a la tecla de interacción del Jugador
func _on_player_interact_requested() -> void:
	print("Interacción recibida")

# 3. Reacciona al agotar el tiempo del Temporizador
func _on_round_timer_timeout() -> void:
	$Player.set_process(false)
	$Player.set_process_unhandled_input(false)
	print("Fin de la ronda")
