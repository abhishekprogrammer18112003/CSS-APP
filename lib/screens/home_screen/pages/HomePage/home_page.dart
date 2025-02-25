import 'package:cssapp/utils/storage_handler.dart';
import 'package:flutter/material.dart';
import 'package:cssapp/configs/configs.dart';
import 'widgets/widgets.dart';
import 'widgets/about_us.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const double gap = 35;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            !StorageHandler().isDarkTheme()
                ? Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.1, 0.3, 0.7, 0.8, 1],
                        colors: [
                          Color.fromARGB(138, 255, 64, 128),
                          Color.fromARGB(125, 231, 186, 186),
                          Color.fromARGB(170, 94, 144, 231),
                          Color.fromARGB(132, 96, 125, 139),
                          Color.fromARGB(170, 255, 64, 128)
                        ],
                      ),
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          Colors.white,
                          // const Color.fromARGB(255, 250, 200, 124)
                          //     .withOpacity(0.9),
                          const Color.fromARGB(255, 255, 132, 173)
                              .withOpacity(0.9),
                          const Color.fromARGB(255, 251, 65, 127)
                              .withOpacity(0.9),
                          Colors.black
                        ],
                        center: const Alignment(-0.9, -0.5),
                        focal: const Alignment(-1.2, -0.3),
                        stops: const [0.02, 0.2, 0.45, 1],
                        radius: 0.8,
                      ),
                    ),
                  ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  const CSSText(),
                  const SizedBox(height: gap),
                  const Text(
                    "Department of Computer Science and Engineering\nNational Institute of Technology, Silchar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Quintessential',
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: gap),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Theme.of(context).brightness == Brightness.dark
                          ? Assets.lottieCssGlobeLight
                          : Assets.lottieCssGlobeDark,
                    ),
                  ),
                  const AboutUs(gap: gap),
                  const SizedBox(height: 30),
                  Container(
                    alignment: Alignment.bottomLeft,
                    height: 200,
                    child: Assets.lottieRainMan,
                  ),
                  Text(
                    "PILLARS OF CSS",
                    style: textLarge.copyWith(
                        color: Theme.of(context).colorScheme.background),
                  ),
                  const ExecutiveMembers(),
                  const SizedBox(height: 50),
                  Text("ANNOUNCEMENTS",
                      style: textLarge.copyWith(
                          color: Theme.of(context).colorScheme.background)),
                  Carousel(
                    screenSize: MediaQuery.of(context).size,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
