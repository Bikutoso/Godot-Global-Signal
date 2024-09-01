extends LineEdit

signal text_updated(text_value)


# Called when the node enters the scene tree for the first time.
func _ready():
	# text_updated is added as a global signal
	GlobalSignal.add_emitter('text_updated', self)
	# When the node is ready emmit the string "Hello, World!" and update the label
	GlobalSignal.emit_signal_when_ready('text_updated', ['Hello, World!'], self)
	# Update the label every time the text changes in the text window
	connect('text_changed',Callable(self,'_on_text_changed'))


func _on_text_changed(_value):
	# Emmit the signal in a normal godot 4.x manner
	text_updated.emit(text)
