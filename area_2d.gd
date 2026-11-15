extends Area2D
@onready var win = $win
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

@export_file("*.tscn") var winnerscreen: String

func _on_body_entered(body: Area2D) -> void:
	# Check if the body is the player (by group, name, or class_name)'
	if not body_entered.is_connected(_on_body_entered):
		body_entered.connect(_on_body_entered)
		win.show()
		
