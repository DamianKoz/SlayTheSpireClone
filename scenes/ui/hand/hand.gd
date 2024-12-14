extends HBoxContainer
class_name Hand

func _ready() -> void:
	for child: CardUI in get_children():
		child.reparent_requested.connect(_on_card_ui_reparent_requested)
		

func _on_card_ui_reparent_requested(child: CardUI) -> void:
	child.reparent(self)