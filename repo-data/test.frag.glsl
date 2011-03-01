precision mediump float;

uniform sampler2D diffuseMap;
uniform vec3 u_dir_light_pos;
uniform bool useLight;

varying vec2 texCoord;
varying vec3 v_normal;

void main () {

    vec4 color = texture2D(diffuseMap, texCoord);
    if (useLight){
        float diffuse = dot(normalize(v_normal), normalize(u_dir_light_pos));
        color *= diffuse;
    }
    gl_FragColor = color;
    
    //gl_FragColor.rgb = vec3(d);
    //gl_FragColor.rgb = v_normal;
    
    //gl_FragColor = texture2D(texture1, vec2(0.9, 0.9));
    //gl_FragColor = vec4(texCoord, 0.0, 1.0);

}
