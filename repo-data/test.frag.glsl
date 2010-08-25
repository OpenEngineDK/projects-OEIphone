precision mediump float;

varying vec2 texCoord;
varying vec3 v_normal;

uniform sampler2D texture1;


void main () {

    
    float d = dot(v_normal, normalize(vec3(10,10,10)));

        
    gl_FragColor =  texture2D(texture1, texCoord) * d;
    
    gl_FragColor.rgb = v_normal;
    
    //gl_FragColor = texture2D(texture1, vec2(0.9, 0.9));
    //gl_FragColor = vec4(texCoord, 0.0, 1.0);

}