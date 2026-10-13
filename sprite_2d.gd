extends Sprite2D

@export var speed: float = 240.0

func _process(delta: float) -> void:
	var direction := 0.0
	
	# Ignoramos el Mapa de Entrada y forzamos la lectura física
	if Input.is_physical_key_pressed(KEY_A):
		direction = -1.0
	if Input.is_physical_key_pressed(KEY_D):
		direction = 1.0
		
	print("Lectura directa: ", direction)
	position.x += direction * speed * delta
