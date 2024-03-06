extends Node

"""
func _ready():
	Wwise.register_game_obj(self, self.name)
	Wwise.register_listener(self)
	Wwise.load_bank_id(AK.BANKS.INIT)
	Wwise.load_bank_id(AK.BANKS.GENERAL)
	Wwise.set_state_id(AK.STATES.SONG.GROUP, AK.STATES.SONG.STATE.TWIN_PEAKS)
	Wwise.set_rtpc_value_id(AK.GAME_PARAMETERS.MUSIC_VOLUME, 100, self)
	Wwise.post_event_id(AK.EVENTS.PLAY_MUSIC, self)

	for keys in AK.STATES._dict.Song.STATE.keys():
		$OptionButton.add_item(keys)
	
	for keys in AK.SWITCHES._dict.Guns.SWITCH.keys():
		$TypeGun.get_popup().add_item(keys)

	$TypeGun.get_popup().id_pressed.connect(_on_TypeGun_pressed)
	$Fire.pressed.connect(_on_fire_pressed)

func _on_fire_pressed() -> void:
	Wwise.post_event_id(AK.EVENTS.PLAY_GUNS,self)

func _on_TypeGun_pressed(item):
	print(item," ",$TypeGun.get_popup().get_item_text(item))

func _on_option_button_item_selected(index):
	print ($OptionButton.get_item_text(index))
	Wwise.set_state_id(AK.STATES.SONG.GROUP, AK.STATES._dict.Song.STATE.get($OptionButton.get_item_text(index)))
"""
