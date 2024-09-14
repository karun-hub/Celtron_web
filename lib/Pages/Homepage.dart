import 'package:celtron/Pages/FirstSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/screen_Offset.dart';
import 'AboutSection.dart';
import 'ContactSection.dart';
import 'FeatureSection.dart';
import 'Service.dart';
import 'ServiceSection.dart';
import 'StatsSection.dart';

class HomePage extends StatefulWidget {
  final Function(String) onScrollToSection;
  const HomePage({Key? key, required this.onScrollToSection}) :super(key:key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController controller;
  @override
  void initState() {
    controller = ScrollController();

    controller.addListener(() {
      context.read<DisplayOffset>().changeDisplayOffset(
          (MediaQuery.of(context).size.height + controller.position.pixels)
              .toInt());
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return  Column(
      children: [
        FirstSection(onScrollToSection: widget.onScrollToSection),
        AboutSection(),
        StatsSection(),
        ServicesSection(),
        ClientsSection(),
        FeaturesSection(),
        Services(),
        ContactSection()
      ],
    );
  }
}

