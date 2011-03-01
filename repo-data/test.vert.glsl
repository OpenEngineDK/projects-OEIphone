attribute vec3 vertex;
attribute vec3 normal;
attribute vec2 texCoord0;

uniform mat4 mv_matrix;
uniform mat4 proj_matrix;
uniform mat4 inv_matrix;


varying vec2 texCoord;
varying vec3 v_normal;


void main() {

    vec4 eye = mv_matrix * vec4(vertex, 1.0);
    
    v_normal = mat3(inv_matrix) *  normal;

    gl_Position = proj_matrix *  eye;
    texCoord = texCoord0;
    

}                          

 
