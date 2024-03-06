class_name AK

class EVENTS:

	const PLAY_MUSIC = 2932040671
	const INTRO_EXITCUE = 3222758877
	const PLAY_GUNS = 169558519
	const RESET_PANNING = 2696756348
	const STOP_ALL = 452547817

	const _dict = {
		"Play_Music": PLAY_MUSIC,
		"Intro_ExitCue": INTRO_EXITCUE,
		"Play_Guns": PLAY_GUNS,
		"Reset_Panning": RESET_PANNING,
		"STOP_ALL": STOP_ALL
	}

class STATES:

	class SONG:
		const GROUP = 804823466

		class STATE:
			const CHOPIN = 2463664624
			const TWIN_PEAKS = 3084626518
			const STRINGS = 3363523641
			const NONE = 748895195
			const HERRMANN = 3402710902

	const _dict = {
		"Song": {
			"GROUP": 804823466,	"STATE": {
				"Chopin": 2463664624,
				"Twin_Peaks": 3084626518,
				"Strings": 3363523641,
				"None": 748895195,
				"Herrmann": 3402710902
			}
		}
	}

class SWITCHES:

	class GUNS:
		const GROUP = 688956056

		class SWITCH:
			const PISTOL = 324443136
			const SHOTGUN = 51683977

	const _dict = {
		"Guns": {
			"GROUP": 688956056,	"SWITCH": {
				"Pistol": 324443136,
				"Shotgun": 51683977
			}
		}
	}

class GAME_PARAMETERS:

	const PANNING = 1820302072
	const MUSIC_VOLUME = 1006694123
	const SFX_VOLUME = 1564184899

	const _dict = {
		"Panning": PANNING,
		"Music_Volume": MUSIC_VOLUME,
		"Sfx_Volume": SFX_VOLUME
	}

class TRIGGERS:

	const _dict = {}

class BANKS:

	const INIT = 1355168291
	const GENERAL = 133642231

	const _dict = {
		"Init": INIT,
		"General": GENERAL
	}

class BUSSES:

	const MASTER_AUDIO_BUS = 3803692087

	const _dict = {
		"Master Audio Bus": MASTER_AUDIO_BUS
	}

class AUX_BUSSES:

	const _dict = {}

class AUDIO_DEVICES:

	const SYSTEM = 3859886410
	const NO_OUTPUT = 2317455096

	const _dict = {
		"System": SYSTEM,
		"No_Output": NO_OUTPUT
	}

class EXTERNAL_SOURCES:

	const _dict = {}

