attribute vec3 a_position;
attribute vec3 a_normal;
attribute vec2 a_texcoord;

uniform mat4 mv_matrix;
uniform mat4 proj_matrix;
uniform mat4 inv_matrix;


varying vec2 texCoord;
varying vec3 v_normal;

void main() {
//
//    vec3 lightDir = vec3(10,10,10);
//    vec4 nLight = normalize(lightDir);
//    
    

    vec4 eye = mv_matrix * vec4(a_position, 1.0);
//    vec3 eyePosWorld = (inv_matrix * eye).xyz;
    
    
    
    v_normal = mat3(inv_matrix) *  a_normal;
    //v_normal = a_normal;

    gl_Position = proj_matrix *  eye;
    texCoord = a_texcoord;
    

}                          

 