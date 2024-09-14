import 'package:flutter/material.dart';
import 'dart:js_util' as js_util;
import 'dart:html' as html;

import 'package:model_viewer_plus/model_viewer_plus.dart';

class GLBModelViewer extends StatefulWidget {
  @override
  _GLBModelViewerState createState() => _GLBModelViewerState();
}

class _GLBModelViewerState extends State<GLBModelViewer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SizedBox(
          height: MediaQuery.of(context).size.height*.5,
          width: MediaQuery.of(context).size.width,
          child: ModelViewer(
            backgroundColor: Colors.white,
            src: 'img/solar_project_1_test.glb',
            alt: 'A 3D model of an astronaut',
            autoRotate: true,
          ),
        ),
      ),
    );
  }
}


