shader_type canvas_item;

uniform vec4 color: hint_color;

void fragment() {
	vec4 tex = textureLod(TEXTURE, UV, 0f);
	vec4 col = vec4(color.rgb, tex.a);
	COLOR = col;
}
