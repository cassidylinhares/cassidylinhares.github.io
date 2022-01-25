import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(
    const Portfolio(),
  );
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  Widget _header() {
    //_ means private
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
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
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "I'm a software engineer who specializes in full stack and IoT applications.",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _stack() {
    return SizedBox.shrink();
  }

  Widget _work() {
    return SizedBox.shrink();
  }

  Widget _projects() {
    return SizedBox.shrink();
  }

  Widget _footer() {
    return SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Nunito'),
      home: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          title: Text(
            'Cassidy Linhares',
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _header(),
              _stack(),
              _work(),
              _projects(),
              _footer(),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
