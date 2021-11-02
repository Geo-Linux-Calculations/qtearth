![GitHub release (latest by date)](https://img.shields.io/github/v/release/Geo-Linux-Calculations/qtearth)
![GitHub Release Date](https://img.shields.io/github/release-date/Geo-Linux-Calculations/qtearth)
![GitHub repo size](https://img.shields.io/github/repo-size/Geo-Linux-Calculations/qtearth)
![GitHub all releases](https://img.shields.io/github/downloads/Geo-Linux-Calculations/qtearth/total)
![GitHub](https://img.shields.io/github/license/Geo-Linux-Calculations/qtearth)

# QtSimpleEarth

![about](images/splash.jpg)

[QtSimpleEarth][1] is a simplistic multi-platform virtual globe. It works on Windows, Linux and OS X. QtSimpleEarth is Fast, Free and super Easy to use.

### Build and run SimpleEarth ###

[See Installation Instructions][2]

Main features
-------------
   * Simple code you can learn and leverage
   * Easy to load your own maps and icons
   * Measuring, Volumes and Paths
   * Supports digital elevation data
   * Supports satellite imagery
   * Supports 3D model loading

Build Requirements
------------------

* Qt5 or Qt4 (MinGW under Windows)
* Other optional libraries if using extra features [See Installation Instructions][2]

Runtime Requirements
--------------------
  * Graphics card with OpenGL support

Hello World
-----------

To start understanding the code and API, look at WorldObject and WorldObjectManager classes and the globals.h header file. The hello world example emplaces a label in the world with the following code:
```cpp
//instantiate world object and set label
WorldObject* worldObject = new WorldObject();
worldObject->setLabel("Hello World!");

//set world object position
GeodeticPosition position;
position.latitude = 0.0;  //in decimal degrees
position.longitude = 0.0;
position.altitude = 1.0;  //in Km
worldObject->setGeodeticPosition(position);

//add world object to manager so that it gets rendered
WorldObjectManager::getInstance()->addWorldObject(worldObject);
```

Contact us
----------

   * [Web][1]
   * [Facebook][3]
   * [Google+][4]
   * [LinkedIn][5]

[1]: http://www.huesoftllc.com
[2]: http://www.huesoftllc.com/instructions.html
[3]: https://www.facebook.com/huesoftllc
[4]: https://plus.google.com/113335173892471555886/about/p/pub
[5]: https://www.linkedin.com/company/huesoft-llc?trk=top_nav_home
