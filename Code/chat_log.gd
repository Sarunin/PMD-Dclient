extends RichTextLabel

const colors = {
	'local_player': '#00aaff',
	'message': 'ffffff',
	'system': '#ffaa00',
	'default': '#aaaaaa',
}

func print(message):
	var color = colors.get(
		message.get('color', 'default'),
		colors.default
	)
	bbcode_text += '[color=' + color + ']'
	bbcode_text += message.content
	bbcode_text += '[/color]'
	bbcode_text += '\n'

func print_message(message):
	var color = colors.get(
			message.get('color', 'default'),
			colors.default
	)
	var user_color = colors.get(
			message.get('user_color', 'default'),
			colors.default
	)
	bbcode_text += '[color=' + user_color + ']'
	bbcode_text += message.user
	bbcode_text += '[/color]'
	bbcode_text += '[color=' + color + ']: '
	bbcode_text += message.content
	bbcode_text += '[/color]'
	bbcode_text += '\n'
