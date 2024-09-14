import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .05, vertical: 16),
      color: Colors.white, // Set background color if necessary
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Us',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'img/about.jpg', // Ensure the path is correct in your assets
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                      height: 350,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Celtron Energies is a leading provider of high-quality energy solutions, specializing in top-grade batteries, inverters, and solar PV systems. We are dedicated to delivering superior products at affordable rates, ensuring our customers receive the best value for their investment. ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Our services include not only the sale of premium energy products but also comprehensive installation, service, and maintenance of solar PV systems. We pride ourselves on our same-day response to service requests, ensuring that our customers experience minimal downtime and maximum satisfaction.',
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16), // Space between columns
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.check_circle, color: Colors.deepOrange),
                          title: Text(
                              'Mission: At Celtron Energies, our mission is to empower individuals and businesses with reliable and sustainable energy solutions. We are committed to delivering top-quality products and exceptional service, making clean energy accessible and affordable for all. We strive to exceed customer expectations by providing timely support and innovative energy solutions.'),
                        ),
                        ListTile(
                          leading: Icon(Icons.check_circle, color: Colors.deepOrange),
                          title: Text(
                              'Vision: Our vision is to be a global leader in the renewable energy sector, recognized for our commitment to quality, innovation, and customer satisfaction. We aim to make sustainable energy solutions mainstream, fostering a greener future and a more sustainable planet for generations to come.'),
                        ),
                        ListTile(
                          leading: Icon(Icons.check_circle, color: Colors.deepOrange),
                          title: Text(
                              'Values: We are dedicated to providing transparent, eco-friendly solar energy solutions that respect diversity, promote equal opportunities, and uphold integrity.'),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Stack(
                      children: [
                        Image.asset(
                          'img/about-2.jpg', // Ensure the path is correct in your assets
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 250,
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: Icon(Icons.play_circle_fill, size: 50, color: Colors.white),
                              onPressed: () {
                                _showVideoDialog(context); // Call the popup video player
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showVideoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          // insetPadding: EdgeInsets.all(10),
          child: Container(
            color: Colors.black,
            width: MediaQuery.of(context).size.width*.6, // Width of the video in popup
            height: MediaQuery.of(context).size.height*.7, // Height of the video in popup
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close,color: Colors.white,),
                      onPressed: () {
                        Navigator.of(context).pop(); // Close the dialog
                      },
                    ),
                  ],
                ),
                _VideoPlayerWidget(), // Video Player Widget for the video

              ],
            ),
          ),
        );
      },
    );
  }
}

class _VideoPlayerWidget extends StatefulWidget {
  @override
  __VideoPlayerWidgetState createState() => __VideoPlayerWidgetState();
}

class __VideoPlayerWidgetState extends State<_VideoPlayerWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/celtronenergies-20b67.appspot.com/o/b28acef46e780f02c47ee06665e15226.mp4?alt=media&token=b601c184-9ed0-4f22-ab0d-b3ee88097b2c', // Your video URL
    )..initialize().then((_) {
      setState(() {
        _controller.play(); // Start playing once the video is loaded
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when no longer needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: VideoPlayer(_controller),
    )
        : CircularProgressIndicator(); // Show loading until the video is ready
  }
}
