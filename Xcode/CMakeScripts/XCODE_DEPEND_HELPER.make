# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to, avoiding a bug in XCode 1.5
all.Debug: \
	${SRCROOT}/projects/OEIphone/Xcode/OEIphone/Debug/OEIphone

all.Release: \
	${SRCROOT}/projects/OEIphone/Xcode/OEIphone/Release/OEIphone

all.MinSizeRel: \
	${SRCROOT}/projects/OEIphone/Xcode/OEIphone/MinSizeRel/OEIphone

all.RelWithDebInfo: \
	${SRCROOT}/projects/OEIphone/Xcode/OEIphone/RelWithDebInfo/OEIphone

# For each target create a dummy rule so the target does not have to exist
${SRCROOT}/projects/OEIphone/Xcode/src/Core/Debug/libOpenEngine_Core.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Logging/Debug/libOpenEngine_Logging.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Display/Debug/libOpenEngine_Display.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Devices/Debug/libOpenEngine_Devices.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Scene/Debug/libOpenEngine_Scene.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/Debug/libOpenEngine_Renderers.a:
${SRCROOT}/projects/OEIphone/Xcode/OpenGLESRenderer/Debug/libExtensions_OpenGLESRenderer.a:
${SRCROOT}/projects/OEIphone/Xcode/iOSEnvironment/Debug/libExtensions_iOSEnvironment.a:
${SRCROOT}/projects/OEIphone/Xcode/mesh-OBJResource/Debug/libExtensions_OBJResource.a:
${SRCROOT}/projects/OEIphone/Xcode/TGAResource/Debug/libExtensions_TGAResource.a:
${SRCROOT}/projects/OEIphone/Xcode/MeshUtils/Debug/libExtensions_MeshUtils.a:
${SRCROOT}/projects/OEIphone/Xcode/Sockets/Debug/libExtensions_Sockets.a:
${SRCROOT}/projects/OEIphone/Xcode/IRC/Debug/libExtensions_IRC.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Geometry/Debug/libOpenEngine_Geometry.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Resources/Debug/libOpenEngine_Resources.a:
${SRCROOT}/projects/OEIphone/Xcode/AccelerationStructures/Debug/libExtensions_AccelerationStructures.a:
${SRCROOT}/projects/OEIphone/Xcode/OpenGLESResources/Debug/libExtensions_OpenGLESResources.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Math/Debug/libOpenEngine_Math.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Utils/Debug/libOpenEngine_Utils.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Core/MinSizeRel/libOpenEngine_Core.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Logging/MinSizeRel/libOpenEngine_Logging.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Display/MinSizeRel/libOpenEngine_Display.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Devices/MinSizeRel/libOpenEngine_Devices.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Scene/MinSizeRel/libOpenEngine_Scene.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/MinSizeRel/libOpenEngine_Renderers.a:
${SRCROOT}/projects/OEIphone/Xcode/OpenGLESRenderer/MinSizeRel/libExtensions_OpenGLESRenderer.a:
${SRCROOT}/projects/OEIphone/Xcode/iOSEnvironment/MinSizeRel/libExtensions_iOSEnvironment.a:
${SRCROOT}/projects/OEIphone/Xcode/mesh-OBJResource/MinSizeRel/libExtensions_OBJResource.a:
${SRCROOT}/projects/OEIphone/Xcode/TGAResource/MinSizeRel/libExtensions_TGAResource.a:
${SRCROOT}/projects/OEIphone/Xcode/MeshUtils/MinSizeRel/libExtensions_MeshUtils.a:
${SRCROOT}/projects/OEIphone/Xcode/Sockets/MinSizeRel/libExtensions_Sockets.a:
${SRCROOT}/projects/OEIphone/Xcode/IRC/MinSizeRel/libExtensions_IRC.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Geometry/MinSizeRel/libOpenEngine_Geometry.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Resources/MinSizeRel/libOpenEngine_Resources.a:
${SRCROOT}/projects/OEIphone/Xcode/AccelerationStructures/MinSizeRel/libExtensions_AccelerationStructures.a:
${SRCROOT}/projects/OEIphone/Xcode/OpenGLESResources/MinSizeRel/libExtensions_OpenGLESResources.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Math/MinSizeRel/libOpenEngine_Math.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Utils/MinSizeRel/libOpenEngine_Utils.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Core/RelWithDebInfo/libOpenEngine_Core.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Logging/RelWithDebInfo/libOpenEngine_Logging.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Display/RelWithDebInfo/libOpenEngine_Display.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Devices/RelWithDebInfo/libOpenEngine_Devices.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Scene/RelWithDebInfo/libOpenEngine_Scene.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/RelWithDebInfo/libOpenEngine_Renderers.a:
${SRCROOT}/projects/OEIphone/Xcode/OpenGLESRenderer/RelWithDebInfo/libExtensions_OpenGLESRenderer.a:
${SRCROOT}/projects/OEIphone/Xcode/iOSEnvironment/RelWithDebInfo/libExtensions_iOSEnvironment.a:
${SRCROOT}/projects/OEIphone/Xcode/mesh-OBJResource/RelWithDebInfo/libExtensions_OBJResource.a:
${SRCROOT}/projects/OEIphone/Xcode/TGAResource/RelWithDebInfo/libExtensions_TGAResource.a:
${SRCROOT}/projects/OEIphone/Xcode/MeshUtils/RelWithDebInfo/libExtensions_MeshUtils.a:
${SRCROOT}/projects/OEIphone/Xcode/Sockets/RelWithDebInfo/libExtensions_Sockets.a:
${SRCROOT}/projects/OEIphone/Xcode/IRC/RelWithDebInfo/libExtensions_IRC.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Geometry/RelWithDebInfo/libOpenEngine_Geometry.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Resources/RelWithDebInfo/libOpenEngine_Resources.a:
${SRCROOT}/projects/OEIphone/Xcode/AccelerationStructures/RelWithDebInfo/libExtensions_AccelerationStructures.a:
${SRCROOT}/projects/OEIphone/Xcode/OpenGLESResources/RelWithDebInfo/libExtensions_OpenGLESResources.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Math/RelWithDebInfo/libOpenEngine_Math.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Utils/RelWithDebInfo/libOpenEngine_Utils.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Core/Release/libOpenEngine_Core.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Logging/Release/libOpenEngine_Logging.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Display/Release/libOpenEngine_Display.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Devices/Release/libOpenEngine_Devices.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Scene/Release/libOpenEngine_Scene.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/Release/libOpenEngine_Renderers.a:
${SRCROOT}/projects/OEIphone/Xcode/OpenGLESRenderer/Release/libExtensions_OpenGLESRenderer.a:
${SRCROOT}/projects/OEIphone/Xcode/iOSEnvironment/Release/libExtensions_iOSEnvironment.a:
${SRCROOT}/projects/OEIphone/Xcode/mesh-OBJResource/Release/libExtensions_OBJResource.a:
${SRCROOT}/projects/OEIphone/Xcode/TGAResource/Release/libExtensions_TGAResource.a:
${SRCROOT}/projects/OEIphone/Xcode/MeshUtils/Release/libExtensions_MeshUtils.a:
${SRCROOT}/projects/OEIphone/Xcode/Sockets/Release/libExtensions_Sockets.a:
${SRCROOT}/projects/OEIphone/Xcode/IRC/Release/libExtensions_IRC.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Geometry/Release/libOpenEngine_Geometry.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Resources/Release/libOpenEngine_Resources.a:
${SRCROOT}/projects/OEIphone/Xcode/AccelerationStructures/Release/libExtensions_AccelerationStructures.a:
${SRCROOT}/projects/OEIphone/Xcode/OpenGLESResources/Release/libExtensions_OpenGLESResources.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Math/Release/libOpenEngine_Math.a:
${SRCROOT}/projects/OEIphone/Xcode/src/Utils/Release/libOpenEngine_Utils.a:


# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
${SRCROOT}/projects/OEIphone/Xcode/OEIphone/Debug/OEIphone:\
	${SRCROOT}/projects/OEIphone/Xcode/src/Core/Debug/libOpenEngine_Core.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Logging/Debug/libOpenEngine_Logging.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Display/Debug/libOpenEngine_Display.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Devices/Debug/libOpenEngine_Devices.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Scene/Debug/libOpenEngine_Scene.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/Debug/libOpenEngine_Renderers.a\
	${SRCROOT}/projects/OEIphone/Xcode/OpenGLESRenderer/Debug/libExtensions_OpenGLESRenderer.a\
	${SRCROOT}/projects/OEIphone/Xcode/iOSEnvironment/Debug/libExtensions_iOSEnvironment.a\
	${SRCROOT}/projects/OEIphone/Xcode/mesh-OBJResource/Debug/libExtensions_OBJResource.a\
	${SRCROOT}/projects/OEIphone/Xcode/TGAResource/Debug/libExtensions_TGAResource.a\
	${SRCROOT}/projects/OEIphone/Xcode/MeshUtils/Debug/libExtensions_MeshUtils.a\
	${SRCROOT}/projects/OEIphone/Xcode/Sockets/Debug/libExtensions_Sockets.a\
	${SRCROOT}/projects/OEIphone/Xcode/IRC/Debug/libExtensions_IRC.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Scene/Debug/libOpenEngine_Scene.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/Debug/libOpenEngine_Renderers.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Geometry/Debug/libOpenEngine_Geometry.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Resources/Debug/libOpenEngine_Resources.a\
	${SRCROOT}/projects/OEIphone/Xcode/AccelerationStructures/Debug/libExtensions_AccelerationStructures.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Scene/Debug/libOpenEngine_Scene.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/Debug/libOpenEngine_Renderers.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Geometry/Debug/libOpenEngine_Geometry.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Resources/Debug/libOpenEngine_Resources.a\
	${SRCROOT}/projects/OEIphone/Xcode/AccelerationStructures/Debug/libExtensions_AccelerationStructures.a\
	${SRCROOT}/projects/OEIphone/Xcode/OpenGLESResources/Debug/libExtensions_OpenGLESResources.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Logging/Debug/libOpenEngine_Logging.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Math/Debug/libOpenEngine_Math.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Core/Debug/libOpenEngine_Core.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Utils/Debug/libOpenEngine_Utils.a
	/bin/rm -f ${SRCROOT}/projects/OEIphone/Xcode/OEIphone/Debug/OEIphone


${SRCROOT}/projects/OEIphone/Xcode/OEIphone/Release/OEIphone:\
	${SRCROOT}/projects/OEIphone/Xcode/src/Core/Release/libOpenEngine_Core.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Logging/Release/libOpenEngine_Logging.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Display/Release/libOpenEngine_Display.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Devices/Release/libOpenEngine_Devices.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Scene/Release/libOpenEngine_Scene.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/Release/libOpenEngine_Renderers.a\
	${SRCROOT}/projects/OEIphone/Xcode/OpenGLESRenderer/Release/libExtensions_OpenGLESRenderer.a\
	${SRCROOT}/projects/OEIphone/Xcode/iOSEnvironment/Release/libExtensions_iOSEnvironment.a\
	${SRCROOT}/projects/OEIphone/Xcode/mesh-OBJResource/Release/libExtensions_OBJResource.a\
	${SRCROOT}/projects/OEIphone/Xcode/TGAResource/Release/libExtensions_TGAResource.a\
	${SRCROOT}/projects/OEIphone/Xcode/MeshUtils/Release/libExtensions_MeshUtils.a\
	${SRCROOT}/projects/OEIphone/Xcode/Sockets/Release/libExtensions_Sockets.a\
	${SRCROOT}/projects/OEIphone/Xcode/IRC/Release/libExtensions_IRC.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Scene/Release/libOpenEngine_Scene.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/Release/libOpenEngine_Renderers.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Geometry/Release/libOpenEngine_Geometry.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Resources/Release/libOpenEngine_Resources.a\
	${SRCROOT}/projects/OEIphone/Xcode/AccelerationStructures/Release/libExtensions_AccelerationStructures.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Scene/Release/libOpenEngine_Scene.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/Release/libOpenEngine_Renderers.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Geometry/Release/libOpenEngine_Geometry.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Resources/Release/libOpenEngine_Resources.a\
	${SRCROOT}/projects/OEIphone/Xcode/AccelerationStructures/Release/libExtensions_AccelerationStructures.a\
	${SRCROOT}/projects/OEIphone/Xcode/OpenGLESResources/Release/libExtensions_OpenGLESResources.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Logging/Release/libOpenEngine_Logging.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Math/Release/libOpenEngine_Math.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Core/Release/libOpenEngine_Core.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Utils/Release/libOpenEngine_Utils.a
	/bin/rm -f ${SRCROOT}/projects/OEIphone/Xcode/OEIphone/Release/OEIphone


${SRCROOT}/projects/OEIphone/Xcode/OEIphone/MinSizeRel/OEIphone:\
	${SRCROOT}/projects/OEIphone/Xcode/src/Core/MinSizeRel/libOpenEngine_Core.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Logging/MinSizeRel/libOpenEngine_Logging.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Display/MinSizeRel/libOpenEngine_Display.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Devices/MinSizeRel/libOpenEngine_Devices.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Scene/MinSizeRel/libOpenEngine_Scene.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/MinSizeRel/libOpenEngine_Renderers.a\
	${SRCROOT}/projects/OEIphone/Xcode/OpenGLESRenderer/MinSizeRel/libExtensions_OpenGLESRenderer.a\
	${SRCROOT}/projects/OEIphone/Xcode/iOSEnvironment/MinSizeRel/libExtensions_iOSEnvironment.a\
	${SRCROOT}/projects/OEIphone/Xcode/mesh-OBJResource/MinSizeRel/libExtensions_OBJResource.a\
	${SRCROOT}/projects/OEIphone/Xcode/TGAResource/MinSizeRel/libExtensions_TGAResource.a\
	${SRCROOT}/projects/OEIphone/Xcode/MeshUtils/MinSizeRel/libExtensions_MeshUtils.a\
	${SRCROOT}/projects/OEIphone/Xcode/Sockets/MinSizeRel/libExtensions_Sockets.a\
	${SRCROOT}/projects/OEIphone/Xcode/IRC/MinSizeRel/libExtensions_IRC.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Scene/MinSizeRel/libOpenEngine_Scene.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/MinSizeRel/libOpenEngine_Renderers.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Geometry/MinSizeRel/libOpenEngine_Geometry.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Resources/MinSizeRel/libOpenEngine_Resources.a\
	${SRCROOT}/projects/OEIphone/Xcode/AccelerationStructures/MinSizeRel/libExtensions_AccelerationStructures.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Scene/MinSizeRel/libOpenEngine_Scene.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/MinSizeRel/libOpenEngine_Renderers.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Geometry/MinSizeRel/libOpenEngine_Geometry.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Resources/MinSizeRel/libOpenEngine_Resources.a\
	${SRCROOT}/projects/OEIphone/Xcode/AccelerationStructures/MinSizeRel/libExtensions_AccelerationStructures.a\
	${SRCROOT}/projects/OEIphone/Xcode/OpenGLESResources/MinSizeRel/libExtensions_OpenGLESResources.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Logging/MinSizeRel/libOpenEngine_Logging.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Math/MinSizeRel/libOpenEngine_Math.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Core/MinSizeRel/libOpenEngine_Core.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Utils/MinSizeRel/libOpenEngine_Utils.a
	/bin/rm -f ${SRCROOT}/projects/OEIphone/Xcode/OEIphone/MinSizeRel/OEIphone


${SRCROOT}/projects/OEIphone/Xcode/OEIphone/RelWithDebInfo/OEIphone:\
	${SRCROOT}/projects/OEIphone/Xcode/src/Core/RelWithDebInfo/libOpenEngine_Core.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Logging/RelWithDebInfo/libOpenEngine_Logging.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Display/RelWithDebInfo/libOpenEngine_Display.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Devices/RelWithDebInfo/libOpenEngine_Devices.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Scene/RelWithDebInfo/libOpenEngine_Scene.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/RelWithDebInfo/libOpenEngine_Renderers.a\
	${SRCROOT}/projects/OEIphone/Xcode/OpenGLESRenderer/RelWithDebInfo/libExtensions_OpenGLESRenderer.a\
	${SRCROOT}/projects/OEIphone/Xcode/iOSEnvironment/RelWithDebInfo/libExtensions_iOSEnvironment.a\
	${SRCROOT}/projects/OEIphone/Xcode/mesh-OBJResource/RelWithDebInfo/libExtensions_OBJResource.a\
	${SRCROOT}/projects/OEIphone/Xcode/TGAResource/RelWithDebInfo/libExtensions_TGAResource.a\
	${SRCROOT}/projects/OEIphone/Xcode/MeshUtils/RelWithDebInfo/libExtensions_MeshUtils.a\
	${SRCROOT}/projects/OEIphone/Xcode/Sockets/RelWithDebInfo/libExtensions_Sockets.a\
	${SRCROOT}/projects/OEIphone/Xcode/IRC/RelWithDebInfo/libExtensions_IRC.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Scene/RelWithDebInfo/libOpenEngine_Scene.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/RelWithDebInfo/libOpenEngine_Renderers.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Geometry/RelWithDebInfo/libOpenEngine_Geometry.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Resources/RelWithDebInfo/libOpenEngine_Resources.a\
	${SRCROOT}/projects/OEIphone/Xcode/AccelerationStructures/RelWithDebInfo/libExtensions_AccelerationStructures.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Scene/RelWithDebInfo/libOpenEngine_Scene.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Renderers/RelWithDebInfo/libOpenEngine_Renderers.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Geometry/RelWithDebInfo/libOpenEngine_Geometry.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Resources/RelWithDebInfo/libOpenEngine_Resources.a\
	${SRCROOT}/projects/OEIphone/Xcode/AccelerationStructures/RelWithDebInfo/libExtensions_AccelerationStructures.a\
	${SRCROOT}/projects/OEIphone/Xcode/OpenGLESResources/RelWithDebInfo/libExtensions_OpenGLESResources.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Logging/RelWithDebInfo/libOpenEngine_Logging.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Math/RelWithDebInfo/libOpenEngine_Math.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Core/RelWithDebInfo/libOpenEngine_Core.a\
	${SRCROOT}/projects/OEIphone/Xcode/src/Utils/RelWithDebInfo/libOpenEngine_Utils.a
	/bin/rm -f ${SRCROOT}/projects/OEIphone/Xcode/OEIphone/RelWithDebInfo/OEIphone


