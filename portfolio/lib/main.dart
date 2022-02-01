import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/header.dart';
import 'package:portfolio/projects.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Portfolio(),
      theme: ThemeData(fontFamily: 'Nunito'),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  Widget _stack() {
    return SizedBox.shrink();
  }

  Widget _work() {
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

  Widget _projects() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(128, 32, 0, 0),
              child: Text(
                "Things I've made",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 64,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 5,
                    blurRadius: 6,
                    offset: Offset(5, 7),
                  )
                ],
              ),
              child: Image.asset(
                'assets/projects/mad_libs.png',
                width: 600,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 5,
                    blurRadius: 6,
                    offset: Offset(5, 10),
                  )
                ],
              ),
              child: Image.asset(
                'assets/projects/plant_pal.png',
                width: 600,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _footer() {
    return SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'Cassidy Linhares',
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            _stack(),
            _work(),
            const Projects(),
            _footer(),
          ],
        ),
      ),
    );
  }
}
