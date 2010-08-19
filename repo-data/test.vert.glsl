attribute vec3 vPosition;

uniform mat4 mv_matrix;
uniform mat4 proj_matrix;

mat4 view_frustum(
    float angle_of_view,
    float aspect_ratio,
    float z_near,
    float z_far) {
    return mat4(
        vec4(1.0/tan(angle_of_view),           0.0, 0.0, 0.0),
        vec4(0.0, aspect_ratio/tan(angle_of_view),  0.0, 0.0),
        vec4(0.0, 0.0,    (z_far+z_near)/(z_far-z_near), -1.0),
        vec4(0.0, 0.0, 2.0*z_far*z_near/(z_far-z_near), 0.0)
    );
}

mat4 translate(float x, float y, float z)
{
    return mat4(
        vec4(1.0, 0.0, 0.0, 0.0),
        vec4(0.0, 1.0, 0.0, 0.0),
        vec4(0.0, 0.0, 1.0, 0.0),
        vec4(x,   y,   z,   1.0)
    );
}


void main() {
    vec4 p = mv_matrix * vec4(vPosition, 1.0);
    mat4 proj = view_frustum(radians(45.0), 4.0/3.0, 0.05, 5.0);
    proj = proj_matrix;
    gl_Position = proj *  p;
}                          

 