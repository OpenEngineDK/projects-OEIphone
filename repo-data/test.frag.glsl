precision mediump float;

varying vec2 texCoord;
varying vec3 v_normal;

uniform sampler2D texture1;
uniform vec3 u_dir_light_pos;

void main () {

    
    float d = dot(normalize(v_normal), normalize(u_dir_light_pos));

        
    //gl_FragColor =  texture2D(texture1, texCoord) * d;
    
    gl_FragColor.rgb = vec3(d);
    //gl_FragColor.rgb = v_normal;
    
    //gl_FragColor = texture2D(texture1, vec2(0.9, 0.9));
    //gl_FragColor = vec4(texCoord, 0.0, 1.0);

}