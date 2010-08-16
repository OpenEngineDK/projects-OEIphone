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
#include <Resources/ResourceManager.h>
#include <Resources/OpenGLES2Shader.h>
#include <Resources/DataBlock.h>
#include <Scene/SceneNode.h>
#include <Scene/TransformationNode.h>
#include <Scene/MeshNode.h>
#include <Geometry/Mesh.h>
#include <Geometry/GeometrySet.h>


// Game factory
//#include "GameFactory.h"

// name spaces that we will be using.
// this combined with the above imports is almost the same as
// fx. import OpenEngine.Logging.*; in Java.
using namespace OpenEngine::Logging;
using namespace OpenEngine::Core;
using namespace OpenEngine::Utils;
using namespace OpenEngine::Geometry;
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

MeshPtr CreateCube(float size, unsigned int detail, Vector<3, float> color){
    unsigned int d = detail + 1;
    float halfSize = size / 2;
    float unit = size / detail;
    
    enum sides {TOP = 0, BOTTOM = 1, LEFT = 2, RIGHT = 3, FRONT = 4, BACK = 5};
    
    unsigned int bottomOffset = d * d;
    unsigned int leftOffset = 2 * d * d;
    unsigned int rightOffset = 3 * d * d;
    unsigned int frontOffset = 4 * d * d;
    unsigned int backOffset = 5 * d * d;
    
    unsigned int points = 6 * d * d;
    
    Float3DataBlockPtr vertices = Float3DataBlockPtr(new DataBlock<3, float>(points));
    Float3DataBlockPtr normals = Float3DataBlockPtr(new DataBlock<3, float>(points));
    Float3DataBlockPtr colors = Float3DataBlockPtr(new DataBlock<3, float>(points));
    GeometrySetPtr geom = GeometrySetPtr(new GeometrySet(vertices, normals, IDataBlockList(), colors));
    
    // Top side geometry
    for (unsigned int i = 0; i < d; ++i){
        for (unsigned int j = 0; j < d; ++j){
            unsigned int index = i + j * d;
            Vector<3, float> vertex = Vector<3, float>(i * unit - halfSize, halfSize, j * unit - halfSize);
            vertices->SetElement(index, vertex);
            normals->SetElement(index, Vector<3, float>(0, 1, 0));
        }
    }
    // Bottom geometry
    for (unsigned int i = 0; i < d; ++i){
        for (unsigned int j = 0; j < d; ++j){
            unsigned int index = bottomOffset + i + j * d;
            Vector<3, float> vertex = Vector<3, float>(i * unit - halfSize, -halfSize, j * unit - halfSize);
            vertices->SetElement(index, vertex);
            normals->SetElement(index, Vector<3, float>(0, -1, 0));
        }
    }
    // Front geometry
    for (unsigned int i = 0; i < d; ++i){
        for (unsigned int j = 0; j < d; ++j){
            unsigned int index = frontOffset + i + j * d;
            Vector<3, float> vertex = Vector<3, float>(i * unit - halfSize, j * unit - halfSize, halfSize);
            vertices->SetElement(index, vertex);
            normals->SetElement(index, Vector<3, float>(0, 0, 1));
        }
    }
    // Back geometry
    for (unsigned int i = 0; i < d; ++i){
        for (unsigned int j = 0; j < d; ++j){
            unsigned int index = backOffset + i + j * d;
            Vector<3, float> vertex = Vector<3, float>(i * unit - halfSize, j * unit - halfSize, -halfSize);
            vertices->SetElement(index, vertex);
            normals->SetElement(index, Vector<3, float>(0, 0, -1));
        }
    }
    // Right side geometry
    for (unsigned int i = 0; i < d; ++i){
        for (unsigned int j = 0; j < d; ++j){
            unsigned int index = rightOffset + i + j * d;
            Vector<3, float> vertex = Vector<3, float>(halfSize, i * unit - halfSize, j * unit - halfSize);
            vertices->SetElement(index, vertex);
            normals->SetElement(index, Vector<3, float>(1, 0, 0));
        }
    }
    // Left side geometry
    for (unsigned int i = 0; i < d; ++i){
        for (unsigned int j = 0; j < d; ++j){
            unsigned int index = leftOffset + i + j * d;
            Vector<3, float> vertex = Vector<3, float>(-halfSize, i * unit - halfSize, j * unit - halfSize);
            vertices->SetElement(index, vertex);
            normals->SetElement(index, Vector<3, float>(-1, 0, 0));
        }
    }
    
    // colors
    for (unsigned int i = 0; i < colors->GetSize(); ++ i)
        colors->SetElement(i, color);
    
    IndicesPtr indices = IndicesPtr(new Indices(36 * detail * detail));
    unsigned int* i = indices->GetData();
    
    // Top side indices
    unsigned int index = 0;
    for (unsigned int k = 0; k < 6; ++k){
        unsigned int offset = k * d * d;
        for (unsigned int m = 0; m < detail; ++m){
            for (unsigned int n = 0; n < detail; ++n){
                // Index the (i, j)'th quad of 2 triangles
                if (k == LEFT || k == TOP || k == BACK){
                    i[index++] = offset + m + n * d;
                    i[index++] = offset + m + (n+1) * d;
                    i[index++] = offset + m+1 + n * d;
                    
                    i[index++] = offset + m+1 + n * d;
                    i[index++] = offset + m + (n+1) * d;
                    i[index++] = offset + m+1 + (n+1) * d;
                }else{
                    i[index++] = offset + m + n * d;
                    i[index++] = offset + m+1 + n * d;
                    i[index++] = offset + m + (n+1) * d;
                    
                    i[index++] = offset + m+1 + n * d;
                    i[index++] = offset + m+1 + (n+1) * d;
                    i[index++] = offset + m + (n+1) * d;
                }
            }
        }
    }
    
    return MeshPtr(new Mesh(indices, TRIANGLES, geom, 
                            MaterialPtr(new Material())));
}


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

    IShaderResourcePtr res =  ResourceManager<IShaderResource>::Create("test.glsl");
    //res->Load();
    
    IFrame& frame = env->CreateFrame();
    engine->InitializeEvent().Attach(*env);
    engine->ProcessEvent().Attach(*env);
    engine->DeinitializeEvent().Attach(*env);
    
    IRenderCanvas *canvas = new RenderCanvas();
    IRenderer *renderer = new Renderer();
    
    
    canvas->SetRenderer(renderer);
    
    RenderingView *renderingview = new RenderingView();
    renderingview->SetMainProgram(res);
    
    renderer->ProcessEvent().Attach(*renderingview);
    renderer->InitializeEvent().Attach(*renderingview);
    //canvas->SetScene(scene);
    frame.SetCanvas(canvas);

    // Setup scene
    SceneNode *root = new SceneNode();
    TransformationNode *trans = new TransformationNode();
    root->AddNode(trans);
    
    MeshPtr mesh = CreateCube(0.5 ,1, Vector<3,float>(0,1,0));
    
    MeshNode *mNode = new MeshNode();
    
    mNode->SetMesh(mesh);
    
    trans->AddNode(mNode);
    
    canvas->SetScene(root);
    
    
    
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


