import 'package:celtron/Pages/Testimonials.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ProjectsSection.dart';
import 'Structures.dart';

class FirstSection extends StatefulWidget {

final Function(String) onScrollToSection;
  const FirstSection({Key? key, required this.onScrollToSection}) :super(key:key);


  @override
  State<FirstSection> createState() => _FirstSectionState();
}

class _FirstSectionState extends State<FirstSection>
    with TickerProviderStateMixin{
  late AnimationController controller;
  late Animation<double> textRevealAnimation;
  late Animation<double> textOpacityAnimation;
  late Animation<double> descriptionAnimation;
  late Animation<double> smallImageReveal;
  late Animation<double> smallImageOpacity;
  late Animation<double> navbarOpacity;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1700,
      ),
      reverseDuration: const Duration(
        milliseconds: 375,
      ),
    );
    textRevealAnimation = Tween<double>(begin: 100.0, end: 0.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: const Interval(0.0, 0.3, curve: Curves.easeOut)));

    textOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: const Interval(0.0, 0.3, curve: Curves.easeOut)));

    descriptionAnimation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: controller,
        curve: const Interval(0.3, 0.5, curve: Curves.easeOut)));

    smallImageReveal = Tween(begin: 180.0, end: 0.0).animate(CurvedAnimation(
        parent: controller,
        curve: const Interval(0.5, 0.7, curve: Curves.easeOut)));

    smallImageOpacity = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: controller,
        curve: const Interval(0.6, 0.8, curve: Curves.easeOut)));

    navbarOpacity = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: controller,
        curve: const Interval(0.8, 1.0, curve: Curves.easeOut)));

    super.initState();

    Future.delayed(const Duration(milliseconds: 1000), () {
      controller.forward();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'img/bg.jpg', // Hero background image
          fit: BoxFit.cover,
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //   'PLAN. LAUNCH. GROW.',
                //   style: TextStyle(
                //     fontSize: 24,
                //     color: Colors.white,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                Image.asset('img/logo1.png',width: MediaQuery.of(context).size.width*.4,),
                SizedBox(height: 10),
                Text(
                  'Powering a sustainable future with excellence',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Get Started'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange
                      ),
                    ),
                    SizedBox(width: 10),
                    TextButton.icon(
                      onPressed: () {
                        // Add logic for playing video
                      },
                      icon: Icon(Icons.play_circle_fill, color: Colors.white),
                      label: Text('Watch Video', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(child: Align(
          alignment: Alignment.topRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => widget.onScrollToSection('home'),
                child: Text('Home',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              TextButton(
                onPressed: () => widget.onScrollToSection('about'),
                child: Text('About',style: TextStyle(color: Colors.white,fontSize: 20)),
              ),
              TextButton(
                onPressed: () => widget.onScrollToSection('services'),
                child: Text('Services',style: GoogleFonts.lato( // Use Google Font here
                  textStyle: TextStyle(fontSize: 20, color: Colors.white),
                ),),
              ),
              PopupMenuButton<String>(
                onSelected: _navigateToProductPage,
                itemBuilder: (context) =>
                    ['Structures', 'Robotics','BESS'].map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList(),
                child: Row(
                  children: [Text('Products',style: TextStyle(color: Colors.white,fontSize: 20)), Icon(Icons.arrow_drop_down)],
                ),
              ),
              PopupMenuButton<String>(
                onSelected: _navigateToPage,
                itemBuilder: (context) =>
                    ['Ongrid Systems', 'Offgrid Systems','Hybrid Systems','AMC'].map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList(),
                child: Row(
                  children: [Text('Projects',style: TextStyle(color: Colors.white,fontSize: 20)), Icon(Icons.arrow_drop_down)],
                ),
              ),
              PopupMenuButton<String>(
                onSelected: _navigateToExplorePage,
                itemBuilder: (context) =>
                    ['Career', 'Blogs'].map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList(),
                child: Row(
                  children: [Text('Explore',style: TextStyle(color: Colors.white,fontSize: 20)), Icon(Icons.arrow_drop_down)],
                ),
              ),
            ],
          ),
        ))
      ],
    );
  }


  void _navigateToPage(String page) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const OnGridSolarSystemPage()));
    // Implement navigation to another page based on the selected dropdown item
  }
  void _navigateToExplorePage(String page) {
    if( page=='Blogs')
    {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) =>  PostGrid()));
    }
    // Implement navigation to another page based on the selected dropdown item
  }
  void _navigateToProductPage(String page) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) =>  GLBModelViewer()));
    // Implement navigation to another page based on the selected dropdown item
  }

}

class FirstPageImage extends StatefulWidget {
  const FirstPageImage({
    Key? key,
  }) : super(key: key);

  @override
  State<FirstPageImage> createState() => _FirstPageImageState();
}

class _FirstPageImageState extends State<FirstPageImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 775));

    _animation = Tween<double>(begin: 920.0, end: 0.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://images.unsplash.com/photo-1551879400-111a9087cd86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          Future.delayed(const Duration(milliseconds: 375), () {
            if (_controller.isDismissed) {
              _controller.forward();
            }
          });
          return AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    height: 920.0,
                    width: double.infinity,
                    child: child,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: _animation.value,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                  ),
                ],
              );
            },
            child: child,
          );
        }
        return const SizedBox();
      },
    );
  }
}

