extends HBoxContainer  # Or VBoxContainer, depending on your setup.

# This function runs when the scene loads.
func _ready():
	# Connect each button's "pressed" signal to a function, with extra arguments.
	$HomeButton.pressed.connect(_on_Button_pressed.bind("res://Home.tscn"))
	$ShopButton.pressed.connect(_on_Button_pressed.bind("res://Shop.tscn"))
	$QuestsButton.pressed.connect(_on_Button_pressed.bind("res://Quests.tscn"))
	$ActivitiesButton.pressed.connect(_on_Button_pressed.bind("res://Activities.tscn"))
	$FriendsButton.pressed.connect(_on_Button_pressed.bind("res://Friends.tscn"))

# This function runs when any button is pressed.
func _on_Button_pressed(scene_path: String):
	# Change to the new scene using the scene path.
	get_tree().change_scene_to_file(scene_path)
