// main
// -------------------------------------------------------------------
// Copyright (C) 2007 OpenEngine.dk (See AUTHORS) 
// 
// This program is free software; It is covered by the GNU General 
// Public License version 2 or any later version. 
// See the GNU General Public License for more details (see LICENSE). 
//--------------------------------------------------------------------

// OpenEngine stuff
// #include <Meta/Config.h>
#include <Logging/Logger.h>
#include <Logging/StreamLogger.h>
#include <Core/Engine.h>
#include <Core/iOSEngine.h>
#include <Network/IRCClient.h>
#include <Logging/IRCLogger.h>
#include <Display/iOSEnvironment.h>
#include <Display/OpenGLES2/RenderCanvas.h>
#include <Renderers/OpenGLES2/Renderer.h>
#include <Renderers/OpenGLES2/RenderingView.h>
#include <Renderers/OpenGLES2/LightRenderer.h>
#include <Renderers/TextureLoader.h>
#include <Resources/ResourceManager.h>
#include <Resources/OpenGLES2Shader.h>
#include <Resources/DataBlock.h>
#include <Scene/SceneNode.h>
#include <Scene/TransformationNode.h>
#include <Scene/MeshNode.h>
#include <Geometry/Mesh.h>
#include <Geometry/GeometrySet.h>
#include <Core/EngineEvents.h>
#include <Display/Camera.h>
#include <Display/PerspectiveViewingVolume.h>
#include <Display/Frustum.h>
#include <Devices/iOSTouch.h>
#include <Utils/MeshCreator.h>
#include <Resources/OBJResource.h>
#include <Resources/TGAResource.h>
#include <Scene/DirectionalLightNode.h>

// Game factory
//#include "GameFactory.h"

// name spaces that we will be using.
// this combined with the above imports is almost the same as
// fx. import OpenEngine.Logging.*; in Java.
using namespace OpenEngine::Logging;
using namespace OpenEngine::Core;
using namespace OpenEngine::Utils;
using namespace OpenEngine::Geometry;
using namespace OpenEngine::Devices;
using namespace OpenEngine::Display;
using namespace OpenEngine::Display::OpenGLES2;
using namespace OpenEngine::Renderers;
using namespace OpenEngine::Renderers::OpenGLES2;
using namespace OpenEngine::Resources;
using namespace OpenEngine::Scene;

//class ChannelLogger : public IListener<JoinedChannelArg> {
//    void Handle(JoinedChannelArg arg) {
//        //Logger::AddLogger(new IRCLogger(arg.channel));
//        logger.info << "hmmm" << logger.end;
//    }
//};


class TouchRotator : public IListener<TouchMovedEventArg> {
public:
    TransformationNode *node;
    TouchRotator(TransformationNode *node) : node(node) {
    }
    
    void Handle(TouchMovedEventArg arg) {
        
        float s = 0.01;
        
        node->Rotate(arg.dy*s, arg.dx*s, 0.0);
        //node->SetPosition(Vector<3,float>(sin(dt*10), cos(dt*10), 0));
        //logger.info << "pos: " << dt << " " << node->GetPosition() << logger.end;
    }
};

class AutoRotator : public IListener<OpenEngine::Core::ProcessEventArg> {
public:
    TransformationNode *node;
    AutoRotator(TransformationNode *node) : node(node) {
    }
    
    void Handle(OpenEngine::Core::ProcessEventArg arg) {
        
        float s = arg.approx / 1000000.0;
        
        node->Rotate(0.0, s, 0.0);
        //node->SetPosition(Vector<3,float>(sin(dt*10), cos(dt*10), 0));
        //logger.info << "pos: " << dt << " " << node->GetPosition() << logger.end;
    }
};




/**
 * Main method for the first quarter project of CGD.
 * Corresponds to the
 *   public static void main(String args[])
 * method in Java.
 */
int main(int argc, char** argv) {
    // Setup logging facilities.
    
    Logger::AddLogger(new StreamLogger(&std::cout));

    
    
    // Print usage info.
    logger.info << "========= Running OpenEngine Test Project =========" << logger.end;
    
    
    
    // Create simple setup
    // SimpleSetup* setup = new SimpleSetup("Example Project Title");
    // // Start the engine.
    // setup->GetEngine().Start();

    IEngine *engine = new iOSEngine();    
    iOSEnvironment *env = new iOSEnvironment();

    logger.info << "Res path " <<  env->GetResourcePath() << logger.end;
    
    DirectoryManager::AppendPath(env->GetResourcePath());
    ResourceManager<IShaderResource>::AddPlugin(new GLES2ShaderPlugin());
    ResourceManager<IModelResource>::AddPlugin(new OBJPlugin());
    ResourceManager<ITexture2D>::AddPlugin(new TGAPlugin());

    IShaderResourcePtr res =  ResourceManager<IShaderResource>::Create("test.glsl");
    //res->Load();
    
    IFrame& frame = env->CreateFrame();
    engine->InitializeEvent().Attach(*env);
    engine->ProcessEvent().Attach(*env);
    engine->DeinitializeEvent().Attach(*env);
    
    IRenderCanvas *canvas = new RenderCanvas();
    IRenderer *renderer = new Renderer();
    
    TextureLoader *tl = new TextureLoader(*renderer, TextureLoader::RELOAD_QUEUED);
    
    canvas->SetRenderer(renderer);
    
    RenderingView *renderingview = new RenderingView();
    renderingview->SetMainProgram(res);
    
    renderer->ProcessEvent().Attach(*renderingview);
    renderer->InitializeEvent().Attach(*renderingview);

    LightRenderer *lightRenderer = renderingview->GetLightRenderer();
    renderer->PreProcessEvent().Attach(*lightRenderer);

    frame.SetCanvas(canvas);

    // Setup scene
    SceneNode *root = new SceneNode();
    TransformationNode *trans = new TransformationNode();
    TransformationNode *trans1 = new TransformationNode();
    TransformationNode *trans2 = new TransformationNode();
    TransformationNode *trans3 = new TransformationNode();
    root->AddNode(trans);
//    trans->AddNode(trans1);
//    trans->AddNode(trans2);    
//    trans->AddNode(trans3);
    
    TouchRotator *touchr = new TouchRotator(trans);
    AutoRotator *autor = new AutoRotator(trans);
    
    iOSTouch *touch = env->GetTouch();    
    touch->TouchMovedEvent().Attach(*touchr);
    
    engine->ProcessEvent().Attach(*autor);
    
    //MeshPtr mesh = MeshCreator::CreateCube(0.5 ,1, Vector<3,float>(0,1,0));
    
    IModelResourcePtr mod_res = ResourceManager<IModelResource>::Create("FutureTank/model.obj");
    mod_res->Load();
    
    MeshPtr mesh = MeshCreator::CreateSphere(10.0);
    MeshPtr mesh2 = MeshCreator::CreateGeodesicSphere(10.0, 2, false);
    MeshPtr mesh3 = MeshCreator::CreateCube(10.0);
    
    MeshNode *mNode = new MeshNode();    
    MeshNode *mNode2 = new MeshNode();
    MeshNode *mNode3 = new MeshNode();
    
    mNode->SetMesh(mesh);
    mNode2->SetMesh(mesh2);
    mNode3->SetMesh(mesh3);
    
    trans1->AddNode(mNode);
    trans2->AddNode(mNode2);
    trans3->AddNode(mNode3);
    
    
    trans1->Move(0, 20, 0);
    trans2->Move(0, 0, 0);
    trans3->Move(0, -20, 0);
    
    trans->AddNode(mod_res->GetSceneNode());
    
    canvas->SetScene(root);
    
    Camera *cam = new Camera(*(new PerspectiveViewingVolume(0.05, 200.0,3.0/4.0)));
    Frustum *f = new Frustum(*cam);
    
    canvas->SetViewingVolume(f);
    
    cam->SetPosition(Vector<3,float>(60));
    cam->LookAt(Vector<3,float>(0,0,0));
    
    tl->Load(*root);
    
    
    DirectionalLightNode *light = new DirectionalLightNode();
    TransformationNode *lightT = new TransformationNode();
    lightT->AddNode(light);
    lightT->Move(5,5,5);
    root->AddNode(lightT);

    
    
    // IRCClient *client = new IRCClient("irc.freenode.net","oe-ix22","ptx2");

    // client->JoinedChannelEvent().Attach(*(new ChannelLogger()));

    // client->Join("#openengine");
      
    // engine->ProcessEvent().Attach(*client);
    // engine->DeinitializeEvent().Attach(*client);

    //client->Start();

    engine->Start();

    // Return when the engine stops.
    return EXIT_SUCCESS;
}


