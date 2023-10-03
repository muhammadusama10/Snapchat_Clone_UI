import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapchat_clone/Widgets/Custom_Icon.dart';
import 'package:snapchat_clone/Widgets/appbar_widget.dart';
import 'package:flutter/services.dart';
import '../Screens/Chat.dart';
import '../Screens/Discover.dart';
import '../Screens/Map.dart';
import '../Screens/Videos.dart';



class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late CameraController _cameraController;
  int selectedindex = 2;
  PageController pageController = PageController(initialPage: 2);

  get initCamera => null;

  @override
  void initState() {
    super.initState();
    _initializeCameraController();
    updateIconColors();
  }

  Future<void> _initializeCameraController() async {
    final cameras = await availableCameras();
    if (cameras.isNotEmpty) {
      _cameraController = CameraController(cameras[0], ResolutionPreset.max);
      await _cameraController.initialize();
      if (mounted) {
        setState(() {});
      }
    }
  }

  List<IconData> icons = [
    Icons.location_on_outlined,
    Icons.chat_bubble_outline_outlined,
    Icons.photo_camera,
    Icons.people_alt_outlined,
    Icons.play_arrow_outlined,
  ];
  List<Color> iconColors = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  Color selectedIconColor = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            controller: pageController,
            scrollDirection: Axis.horizontal,
            onPageChanged: (int index) {
              setState(() {
                selectedindex = index;
                updateIconColors();
              });
            },
            children: <Widget>[
              Map_Screen(),
              Chat_Screen(),
              Camera_Screen(
                  cameraController: _cameraController, initCamera: initCamera),
              Discover_Screen(),
              Video_Screen(),
            ],
          ),
          Positioned(
            bottom: 0.0,
            child: Stack(
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30.0)),
                    color: Colors.grey.shade900,
                  ),
                  child: Center(
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.grey.shade900, Colors.grey.shade800],
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildNavBarIcon(0),
                          buildNavBarIcon(1),
                          buildNavBarIcon(2),
                          buildNavBarIcon(3),
                          buildNavBarIcon(4),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavBarIcon(int index) {
    return InkWell(
      onTap: () {
        pageController.animateToPage(index,
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      },
      child: Icon(
        icons[index],
        color: iconColors[index],
        size: 30,
      ),
    );
  }

  void updateIconColors() {
    for (int i = 0; i < icons.length; i++) {
      if (i == selectedindex) {
        iconColors[i] = selectedIconColor;
      } else {
        iconColors[i] = Colors.white;
      }
    }
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snapchat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: Home(),
    );
  }
}

class Camera_Screen extends StatefulWidget {
  const Camera_Screen({
    Key? key,
    required this.cameraController,
    required initCamera,
  }) : super(key: key);

  final CameraController cameraController;

  @override
  _Camera_ScreenState createState() => _Camera_ScreenState();
}

class _Camera_ScreenState extends State<Camera_Screen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CameraPreview(widget.cameraController),
        const topbar(
          iscamerapage: true,
          ismapscreen: false,
          isvideopage: false,
        ),
        Positioned(
          bottom: 115,
          child: Row(
            children: [
              custom_icon(
                child: Icon(
                  Icons.photo_library_outlined,
                  size: 26,
                  color: Colors.white,
                ),
                isCameraPage: true,
              ),
              SizedBox(
                width: 18,
              ),
              Image.asset(
                'assets/images/img.png',
                scale: 4.3,
              ),
              SizedBox(
                width: 18,
              ),
              custom_icon(
                child: Icon(
                  Icons.photo_library_outlined,
                  size: 26,
                  color: Colors.white,
                ),
                isCameraPage: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
