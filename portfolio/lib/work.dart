import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(128, 32, 0, 0),
              child: Text(
                "Places I've been",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        Wrap(
          direction: Axis.horizontal,
          spacing: 128,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              'assets/companies/cibc.svg',
              width: 200,
              fit: BoxFit.fitHeight,
            ),
            SvgPicture.asset(
              'assets/companies/mpac.svg',
              width: 200,
              fit: BoxFit.fitHeight,
            ),
            SvgPicture.asset(
              'assets/companies/blackberry.svg',
              width: 200,
              fit: BoxFit.fitHeight,
            ),
            SvgPicture.asset(
              'assets/companies/mark43.svg',
              width: 200,
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
      ],
    );
  }
}
