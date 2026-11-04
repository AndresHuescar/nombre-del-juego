extends Node2D# (O CharacterBody2D, dependiendo del nodo que usaste en 2.1)

# 1. Declaras tu nueva señal arriba del todo
signal interact_requested

# ... 
# (Aquí en medio mantienes tu código de movimiento de la práctica anterior con speed, _process o _physics_process)
# ...

# 2. Añades la función que detecta la tecla y emite la señal
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		interact_requested.emit()
