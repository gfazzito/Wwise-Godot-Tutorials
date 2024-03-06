extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
# REGISTER OBJECT & LISTENER
	Wwise.register_game_obj(self, self.name)
	Wwise.register_listener(self)
# LOAD BANKS
	Wwise.load_bank_id(AK.BANKS.INIT)
	Wwise.load_bank_id(AK.BANKS.GENERAL)
# SET STATES & RTPC
	Wwise.set_state_id(AK.STATES.SONG.GROUP, AK.STATES.SONG.STATE.TWIN_PEAKS)
	Wwise.set_rtpc_value_id(AK.GAME_PARAMETERS.MUSIC_VOLUME, 100, self)

	for keys in AK.STATES._dict.Song.STATE.keys():
		$"Style Music".add_item(keys)
	
	for keys in AK.SWITCHES._dict.Guns.SWITCH.keys():
		$"Guns Switch".get_popup().add_item(keys)

	$"Style Music".item_selected.connect(_on_Style_changed)
	$"Music Volume".value_changed.connect(_on_Music_Volume_changed)
	$"Play Guns".mouse_exited.connect(_on_Guns_Fire)
	$"SFX Volume".value_changed.connect(_on_Sfx_Volume_changed)
	$"Guns Switch".get_popup().id_pressed.connect(_on_Gun_Switched)


func _on_Guns_Fire () -> void:
	Wwise.post_event_id(AK.EVENTS.PLAY_GUNS, self)
	
func _on_Music_Volume_changed (value: float) -> void:
	Wwise.set_rtpc_value_id(AK.GAME_PARAMETERS.MUSIC_VOLUME, value, self)

func _on_Sfx_Volume_changed(value: float) -> void:
	Wwise.set_rtpc_value_id(AK.GAME_PARAMETERS.SFX_VOLUME, value, self)

func _on_Style_changed (index: int) -> void:
	print (index)
	Wwise.set_state_id(AK.STATES.SONG.GROUP, AK.STATES._dict.Song.STATE.get($"Style Music".get_item_text(index)))

func _on_Gun_Switched (id: int) -> void:
	print (id, " ",$"Guns Switch".get_popup().get_item_text(id))
	Wwise.set_switch_id(AK.SWITCHES.GUNS.GROUP, AK.SWITCHES._dict.Guns.SWITCH.get($"Guns Switch".get_popup().get_item_text(id)), self)

func _on_play_music_pressed() -> void:
	Wwise.post_event_id(AK.EVENTS.PLAY_MUSIC, self)

func _on_stop_music_mouse_entered() -> void:
	Wwise.post_event_id(AK.EVENTS.STOP_ALL,self)

