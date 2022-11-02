import 'package:flutter/material.dart';
import 'package:portfolio/header.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/work.dart';

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
    return const SizedBox.shrink();
  }

  Widget _footer() {
    return const SizedBox.shrink();
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
            const Work(),
            const Projects(),
            _footer(),
          ],
        ),
      ),
    );
  }
}
