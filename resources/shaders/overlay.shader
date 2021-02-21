shader_type canvas_item;

uniform float scan_line_count;
uniform float speed;

void fragment() {
	vec3 back = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0f).rgb;
	bool in_scan_line = mod((SCREEN_UV.y + TIME * speed)* scan_line_count , 2f) > 1f;
	back = in_scan_line? back * 0.8: back;
	COLOR.rgb = back;
}