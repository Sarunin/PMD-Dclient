shader_type canvas_item;

uniform vec2 red_offset;
uniform vec2 blue_offset;

void fragment() {
	float r = textureLod(SCREEN_TEXTURE, SCREEN_UV - red_offset, 0f).r;
	float g = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0f).g;
	float b = textureLod(SCREEN_TEXTURE, SCREEN_UV - blue_offset, 0f).b;
	vec3 col = vec3(r, g, b);
	COLOR.rgb = col;
}