#version 400 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

out vec4 ourColor;

uniform float offsetX;
uniform float offsetY;

void main()
{
	gl_Position = vec4(aPos.x + offsetX, aPos.y + offsetY, aPos.z, 1.0f);
	ourColor = vec4(aPos, 1.0f);
}