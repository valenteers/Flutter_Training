import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:Free_Channels/list_item.dart';
import 'package:Free_Channels/slider_item.dart';

void main() {
  runApp(vastateless());
}

class vastateless extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: freeChannelsUI(),
    );
  }
}

class freeChannelsUI extends StatefulWidget {
  const freeChannelsUI({Key? key}) : super(key: key);

  @override
  _freeChannelsUIState createState() => _freeChannelsUIState();
}

/*##################################### Data #####################################*/

class _freeChannelsUIState extends State<freeChannelsUI> {
  // List<String> itemUrl = [
  //   "https://www.blender.org/",
  //   "https://www.python.org/",
  //   "https://flutter.dev/",
  //   "https://godotengine.org/",
  // ];

  List<String> iconsTitle = [
    "html",
    "css",
    "js",
    "svelte",
    "vue",
    "flutter",
    "dart",
    "kivy",
    "ionic",
    "python",
    "robot framework",
    "machine learning",
    "gimp",
    "krita",
    "petalica paint",
    "opentoonz",
    "blender",
    "godot",
    "phaser",
    "unreal engine",
  ];

  List<String> iconsUrl = [
    "assets/logo/320x320_resize/html_320x320.png",
    "assets/logo/320x320_resize/css_320x320.png",
    "assets/logo/320x320_resize/js_320x320.png",
    "assets/logo/320x320_resize/svelte_320x320.png",
    "assets/logo/320x320_resize/vue_320x320.png",
    "assets/logo/320x320_resize/flutter_320x320.png",
    "assets/logo/320x320_resize/dart_320x320.png",
    "assets/logo/320x320_resize/kivy_320x320.png",
    "assets/logo/320x320_resize/ionic_320x320.png",
    "assets/logo/320x320_resize/python_320x320.png",
    "assets/logo/320x320_resize/robot_framework_320x320.png",
    "assets/logo/320x320_resize/machine_learning_320x320.png",
    "assets/logo/320x320_resize/gimp_320x320.png",
    "assets/logo/320x320_resize/krita_320x320.png",
    "assets/logo/320x320_resize/petalica_paint_320x320.png",
    "assets/logo/320x320_resize/opentoonz_320x320.png",
    "assets/logo/320x320_resize/blender_320x320.png",
    "assets/logo/320x320_resize/godot_320x320.png",
    "assets/logo/320x320_resize/phaser_320x320.png",
    "assets/logo/320x320_resize/unreal_320x320.png",
  ];

  List<String> slideImageUrl = [
    "assets/slide_homepage/website.png",
    "assets/slide_homepage/cross_platform.png",
    "assets/slide_homepage/python_rpa_ml.png",
    "assets/slide_homepage/2D.png",
    "assets/slide_homepage/animation.png",
    "assets/slide_homepage/game_engine.png",
  ];

  List<String> slideTitle = [
    "Web Site",
    "Cross Platform",
    "Python,RPA,ML",
    "2D Drawing",
    "Animation",
    "Game Engine",
  ];

/*##################################### Widget #####################################*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*##################################### Top Bar #####################################*/

      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        centerTitle: true,
        title: Text(
          "Free Channels",
          style: TextStyle(
            color: Colors.lightBlue,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.blue,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.blue,
          ),
        ],
      ),

/*##################################### body #####################################*/

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),

/*##################################### slide #####################################*/

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tutorials about?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  height: 240,
                  enlargeCenterPage: true,
                  autoPlay: true,
                ),
                items: [
                  sliderItem(slideImageUrl[0], slideTitle[0]),
                  sliderItem(slideImageUrl[1], slideTitle[1]),
                  sliderItem(slideImageUrl[2], slideTitle[2]),
                  sliderItem(slideImageUrl[3], slideTitle[3]),
                  sliderItem(slideImageUrl[4], slideTitle[4]),
                  sliderItem(slideImageUrl[5], slideTitle[5]),
                ],
              ),

/*##################################### Web Site #####################################*/

              Text(
                slideTitle[0],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[0],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[0]),
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[1],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[1]),
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[2],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[2]),
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[3],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[3]),
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[4],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[4]),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 180,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    listItem(iconsUrl[0], iconsTitle[0]),
                    listItem(iconsUrl[1], iconsTitle[1]),
                    listItem(iconsUrl[2], iconsTitle[2]),
                    listItem(iconsUrl[3], iconsTitle[3]),
                    listItem(iconsUrl[4], iconsTitle[4]),
                  ],
                ),
              ),

/*##################################### Cross Platform #####################################*/

              Text(
                slideTitle[1],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[5],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[5]),
                    // WidgetSpan(
                    //   child: Container(
                    //     padding:
                    //         EdgeInsets.symmetric(vertical: 0, horizontal: 6),
                    //     child: Image.asset(
                    //       iconsUrl[6],
                    //       height: 24,
                    //       fit: BoxFit.fitHeight,
                    //     ),
                    //   ),
                    // ),
                    // TextSpan(text: iconsTitle[6]),
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[7],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[7]),
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[8],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[8]),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 180,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    listItem(iconsUrl[5], iconsTitle[5]),
                    // listItem(iconsUrl[6], iconsTitle[6]),
                    listItem(iconsUrl[7], iconsTitle[7]),
                    listItem(iconsUrl[8], iconsTitle[8]),
                  ],
                ),
              ),

/*##################################### Python,RPA,ML #####################################*/

              Text(
                slideTitle[2],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[9],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[9]),
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[10],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[10]),
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[11],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[11]),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 180,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    listItem(iconsUrl[9], iconsTitle[9]),
                    listItem(iconsUrl[10], iconsTitle[10]),
                    listItem(iconsUrl[11], iconsTitle[11]),
                  ],
                ),
              ),

/*##################################### 2D Drawing #####################################*/

              Text(
                slideTitle[3],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[12],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[12]),
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[13],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[13]),
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[14],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[14]),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 180,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    listItem(iconsUrl[12], iconsTitle[12]),
                    listItem(iconsUrl[13], iconsTitle[13]),
                    listItem(iconsUrl[14], iconsTitle[14]),
                  ],
                ),
              ),

/*##################################### Animation #####################################*/

              Text(
                slideTitle[4],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[15],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[15]),
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[16],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[16]),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 180,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    listItem(iconsUrl[15], iconsTitle[15]),
                    listItem(iconsUrl[16], iconsTitle[16]),
                  ],
                ),
              ),

/*##################################### Game Engine #####################################*/

              Text(
                slideTitle[5],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[17],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[17]),
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[18],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[18]),
                    WidgetSpan(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Image.asset(
                          iconsUrl[19],
                          height: 24,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // TextSpan(text: iconsTitle[19]),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 180,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    listItem(iconsUrl[17], iconsTitle[17]),
                    listItem(iconsUrl[18], iconsTitle[18]),
                    listItem(iconsUrl[19], iconsTitle[19]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

/*##################################### Bottom Bar #####################################*/

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF121212),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue,
        // backgroundColor: Color(0xFF121212),
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Color(0xFF121212),
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Color(0xFF121212),
            label: "Favorite",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Color(0xFF121212),
            label: "Playlist",
            icon: Icon(Icons.playlist_play),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Color(0xFF121212),
            label: "Account",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
