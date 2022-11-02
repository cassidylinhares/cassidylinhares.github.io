import 'package:flutter/material.dart';
import 'utilities/constants.dart';
import 'utilities/strings.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  static const List<Map<String, String>> projects = [
    {
      'image': 'assets/projects/mad_libs.png',
      'title': 'Mad Libs',
      'desc': madLibsProjectText,
    },
    {
      'image': 'assets/projects/plant_pal.png',
      'title': 'Plant Pal',
      'desc': iotProjectText,
    },
  ];

  Widget _webView(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                projects[index]['image'].toString(),
                width: 500,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projects[index]['title'].toString(),
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    projects[index]['desc'].toString(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _mobileView(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              projects[index]['title'].toString(),
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
          ),
          Center(
            child: Image.asset(
              projects[index]['image'].toString(),
              width: 300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              projects[index]['desc'].toString(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isScreenWide =
        MediaQuery.of(context).size.width >= kMinWidthOfLargeScreen;

    return Flex(
      direction: Axis.vertical,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: isScreenWide
                  ? const EdgeInsets.fromLTRB(64, 32, 0, 24)
                  : const EdgeInsets.fromLTRB(20, 32, 0, 16),
              child: const Text(
                "Things I've made",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: projects.length,
            itemBuilder: (context, index) {
              if (isScreenWide) {
                return _webView(index);
              } else {
                return _mobileView(index);
              }
            })
      ],
    );
  }
}
