//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 sampled = texture2D(gm_BaseTexture, v_vTexcoord);
	
	vec3 targets[3];
	targets[0] = vec3(20.0 / 255.0, 93.0 / 255.0, 204.0 / 255.0);
	targets[1] = vec3(0.0 / 255.0, 81.0 / 255.0, 204.0 / 255.0);
	targets[2] = vec3(45.0 / 255.0, 118.0 / 255.0, 229.0 / 255.0);
	
	vec3 replacements[3];
	replacements[0] = vec3( 115.0 / 255.0, 209.0 / 255.0, 64.0 / 255.0);
	replacements[1] = vec3(99.0 / 255.0, 196.0 / 255.0, 47.0 / 255.0);
	replacements[2] = vec3(135.0 / 255.0, 226.0 / 255.0, 86.0 / 255.0);
	
	for (int i = 0; i < 3; i++) {
		if (distance(targets[i], sampled.rgb) < 0.001) {
			sampled.rgb = replacements[i];
		}
	}
	
	gl_FragColor = sampled * v_vColour;
}
