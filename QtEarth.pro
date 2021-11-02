TEMPLATE = app
TARGET = QtEarth

QT = core gui opengl network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

#uncomment next line if you want to use elevation databases
#CONFIG += using_gdal
#uncomment next line if you want to use satellite imagery
#CONFIG += using_proj4
#uncomment next line if you want to load 3D models
#CONFIG += using_assimp

QMAKE_CXXFLAGS += -fpermissive -Isrc

win32 {
  LIBS += -lopengl32
} else {
  LIBS += -lGLU
}

CONFIG(using_gdal) {
  win32 {
    INCLUDEPATH += FWTools/include
    LIBS += -LFWTools/lib \
      -lgdal_i
  } else {
    INCLUDEPATH += /usr/include/gdal
    LIBS += -lgdal
  }
}

CONFIG(using_proj4) {
  win32 {
    INCLUDEPATH += FWTools/include
    LIBS += -LFWTools/lib \
      -lproj_i
  } else {
    LIBS += -lproj
  }
}

CONFIG(using_assimp) {
  win32 {
    INCLUDEPATH += assimp/include
    LIBS += -Lassimp/bin32
  }
  LIBS += -lassimp
}

# build dir
UI_DIR  =     build
MOC_DIR =     build
RCC_DIR =     build
OBJECTS_DIR = build
mytarget.commands += $${QMAKE_MKDIR} build

HEADERS += src/AboutWindow.h \
    src/Atmosphere.h \
    src/Camera.h \
    src/ColorSelectWidget.h \
    src/Constants.h \
    src/CrossPlatformSleep.h \
    src/Earth.h \
    src/ElevationManager.h \
    src/EventListener.h \
    src/EventPublisher.h \
    src/ExampleExpirableObject.h \
    src/ExampleFlyObject.h \
    src/ExampleHelloWorld.h \
    src/FileIO.h \
    src/globals.h \
    src/GLWidget.h \
    src/Hud.h \
    src/IconModelManager.h \
    src/IconRenderer.h \
    src/LabelTool.h \
    src/LabelWindow.h \
    src/MainWindow.h \
    src/MeasuringTool.h \
    src/MeasuringWindow.h \
    src/MeshRenderer.h \
    src/ModelRenderer.h \
    src/NewPlaceDialog.h \
    src/PathRenderer.h \
    src/PathTool.h \
    src/PathVolumeWindow.h \
    src/PathWindow.h \
    src/PlacesWindow.h \
    src/SatelliteImageDownloader.h \
    src/ShapefileReader.h \
    src/ShapeRenderer.h \
    src/Tool.h \
    src/ToolManager.h \
    src/TrackInfoWindow.h \
    src/Utilities.h \
    src/VolumeRenderer.h \
    src/VolumeTool.h \
    src/VolumeWindow.h \
    src/WorldObject.h \
    src/WorldObjectManager.h


SOURCES += src/AboutWindow.cpp \
    src/Atmosphere.cpp \
    src/Camera.cpp \
    src/ColorSelectWidget.cpp \
    src/CrossPlatformSleep.cpp \
    src/Earth.cpp \
    src/ElevationManager.cpp \
    src/EventPublisher.cpp \
    src/ExampleExpirableObject.cpp \
    src/ExampleFlyObject.cpp \
    src/ExampleHelloWorld.cpp \
    src/FileIO.cpp \
    src/GLWidget.cpp \
    src/Hud.cpp \
    src/IconModelManager.cpp \
    src/IconRenderer.cpp \
    src/LabelTool.cpp \
    src/LabelWindow.cpp \
    src/main.cpp \
    src/MainWindow.cpp \
    src/MeasuringTool.cpp \
    src/MeasuringWindow.cpp \
    src/MeshRenderer.cpp \
    src/ModelRenderer.cpp \
    src/NewPlaceDialog.cpp \
    src/PathRenderer.cpp \
    src/PathTool.cpp \
    src/PathVolumeWindow.cpp \    
    src/PathWindow.cpp \
    src/PlacesWindow.cpp \
    src/SatelliteImageDownloader.cpp \
    src/ShapefileReader.cpp \
    src/ShapeRenderer.cpp \
    src/Tool.cpp \
    src/ToolManager.cpp \
    src/TrackInfoWindow.cpp \
    src/Utilities.cpp \
    src/VolumeRenderer.cpp \
    src/VolumeTool.cpp \
    src/VolumeWindow.cpp \
    src/WorldObject.cpp \
    src/WorldObjectManager.cpp


FORMS += src/AboutWindow.ui \
    src/LabelWindow.ui \
    src/MainWindow.ui \
    src/MeasuringWindow.ui \
    src/NewPlaceDialog.ui \
    src/PathVolumeWindow.ui \
    src/PathWindow.ui \
    src/PlacesWindow.ui \
    src/TrackInfoWindow.ui \
    src/VolumeWindow.ui

RESOURCES += QtEarth.qrc
