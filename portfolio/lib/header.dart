import 'package:flutter/material.dart';
import 'package:portfolio/utilities/constants.dart';
import 'package:portfolio/utilities/strings.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isScreenWide =
        MediaQuery.of(context).size.width >= kMinWidthOfLargeScreen;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: isScreenWide
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/bitmoji.png'),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hello, I'm Cassidy",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w700),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          width: 800,
                          child: Text(
                            headerText,
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/bitmoji.png'),
                const Text(
                  "Hello, I'm Cassidy",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: SizedBox(
                    width: 800,
                    child: Text(
                      headerText,
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
