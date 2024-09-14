import 'package:celtron/Pages/AppBar.dart';
import 'package:celtron/Pages/Homepage.dart';
import 'package:celtron/Pages/ProductDescPage.dart';
import 'package:celtron/Pages/ProjectsSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;
import 'dart:ui' as ui;
import 'Pages/Structures.dart';
import 'Pages/Testimonials.dart';
import 'models/screen_Offset.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //onGenerateRoute: ,
      debugShowCheckedModeBanner: false,
      title: 'CELTRON ENERGIES',
      theme: ThemeData(
        // textTheme: GoogleFonts.robotoTextTheme(), // Using Roboto font
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) => DisplayOffset(ScrollOffset(scrollOffsetValue: 0)),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isScrolled = false;
  bool _isAppBarVisible = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _isAppBarVisible= _scrollController.offset>699;
        _isScrolled =
            _scrollController.hasClients && _scrollController.offset > 700;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery
        .of(context)
        .size
        .width <= 600;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: _isAppBarVisible
      ?AppBar(
        backgroundColor:  Colors.black87,
        // elevation: _isScrolled ? 4.0 : 0.0,
        title: isMobile
            ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('img/logo1.png', height: 40),
            // IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: () => Scaffold.of(context).openDrawer(),
            // ),
          ],
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('img/logo1.png', height: 60),
            Row(
              children: [
                TextButton(
                  onPressed: () => _scrollToSection('home'),
                  child: Text('Home',style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
                TextButton(
                  onPressed: () => _scrollToSection('about'),
                  child: Text('About',style: TextStyle(color: Colors.white,fontSize: 20)),
                ),
                TextButton(
                  onPressed: () => _scrollToSection('services'),
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
                    children: [Text('Products',style: TextStyle(color: Colors.white)), Icon(Icons.arrow_drop_down)],
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
                    children: [Text('Projects',style: TextStyle(color: Colors.white)), Icon(Icons.arrow_drop_down)],
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
          ],
        ),
      ):null,
      drawer: MediaQuery
          .of(context)
          .size
          .width <= 600
          ? Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Image.asset('img/logo1.png'), // Your logo image
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                // Implement scrolling to section or navigation
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
                // Implement scrolling to section or navigation
              },
            ),
            ListTile(
              title: Text('Services'),
              onTap: () {
                Navigator.pop(context);
                // Implement scrolling to section or navigation
              },
            ),
            ListTile(
              title: Text('Products'),
              onTap: () {
                Navigator.pop(context);
                // Implement navigation
              },
            ),
            ListTile(
              title: Text('Projects'),
              onTap: () {
                Navigator.pop(context);
                // Implement navigation
              },
            ),
          ],
        ),
      )
          : null,
      // No drawer for non-mobile screens
      body: SingleChildScrollView(
          controller: _scrollController,
          child: HomePage(onScrollToSection: _scrollToSection,)
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


   void _scrollToSection(String sectionId) {
    // Implement scrolling to section based on sectionId
    double offset = 0;
    switch (sectionId) {
      case 'home':
        offset = 0; // Replace with actual offset if needed
        break;
      case 'about':
        offset = 700; // Replace with actual offset for the 'about' section
        break;
      case 'services':
        offset = 1300; // Replace with actual offset for the 'services' section
        break;
    }
    _scrollController.animateTo(
      offset,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
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
//   void _showMoreOptions() {
//     // Show a dialog or bottom sheet with additional options for Products and Projects
//     showModalBottomSheet(
//       context: context,
//       builder: (context) {
//         return ListView(
//           children: [
//             ListTile(
//               title: Text('Product 1'),
//               onTap: () => _navigateToPage('Product 1'),
//             ),
//             ListTile(
//               title: Text('Product 2'),
//               onTap: () => _navigateToPage('Product 2'),
//             ),
//             ListTile(
//               title: Text('Project 1'),
//               onTap: () => _navigateToPage('Project 1'),
//             ),
//             ListTile(
//               title: Text('Project 2'),
//               onTap: () => _navigateToPage('Project 2'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
