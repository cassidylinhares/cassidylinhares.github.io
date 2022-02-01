import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(128, 32, 0, 32),
              child: Text(
                "Things I've made",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 5,
                        blurRadius: 6,
                        offset: Offset(4, 5),
                      )
                    ],
                  ),
                  child: Image.asset(
                    'assets/projects/mad_libs.png',
                    width: 600,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  children: const [
                    Text(
                      "Mad Libs",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "The mad libs game but on mobile! Created using React-native, players can pick from various stories or quotes and create new random, wacky, and funny stories. Players can read it aloud or have their phone read it back to them and even save it if they like it.\nAuthentication and storage are done with Google's Firebase.",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 5,
                        blurRadius: 6,
                        offset: Offset(4, 5),
                      )
                    ],
                  ),
                  child: Image.asset(
                    'assets/projects/plant_pal.png',
                    width: 600,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  children: const [
                    Text(
                      "Plant Pal",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "An IoT Smart water metering system for plants. Never forget to water your plants as the sensor reads from the plant each hour and then you get notified when the moisture drops below the recommended moisture level. You just sign in, to set the plant type and then stick the meter into the plant and leave it.\nDevice created using a NodeMCU & moisture sensor. Currently, only a web application made with React and Django exist.",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
