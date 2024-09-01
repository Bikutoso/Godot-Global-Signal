extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	# Add a listener that will call "_on_text_updated" when a signal is
	# emited with "text_updated"
	GlobalSignal.add_listener('text_updated', self, '_on_text_updated')


func _on_text_updated(text_value: String):
	text = text_value
