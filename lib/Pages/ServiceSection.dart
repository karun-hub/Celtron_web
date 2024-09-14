import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget to build each service item
    Widget _buildServiceItem({
      required String imageUrl,
      required IconData icon,
      required String title,
      required String description,
      required int delay,
    }) {
      return Container(
        height: MediaQuery.of(context).size.height*.5 ,
        child: Container(
          height: MediaQuery.of(context).size.height*.35,
          width: MediaQuery.of(context).size.width*.3,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imageUrl))),// Adjust width for responsiveness
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // // Image
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(8.0),
              //   child: Image.asset(
              //     imageUrl,
              //     fit: BoxFit.cover,
              //   ),
              // ),

              // Details
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Icon(
                      icon,
                      color: Colors.deepOrange, // Color for the icon
                      size: 40.0,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40.0), // Section padding
      color: Colors.white, // Background color for the section
      child: Column(
        children: [
          // Section Title
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Text(
                  'Services',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Featured Services',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0),

          // Services Grid
          Wrap(

            spacing: 20.0,
            runSpacing: 20.0,
            alignment: WrapAlignment.center,
            children: [
              // Service Item 1
              _buildServiceItem(
                imageUrl: 'img/services-1.jpg',
                icon: Icons.emoji_objects, // Replace with appropriate icon
                title: 'No Hidden Charges',
                description:
                'We believe in transparency and honesty. With Celtron Energies, what you see is what you get—no hidden fees or surprise costs. Our pricing is straightforward and clear, ensuring you know exactly what you’re paying for',
                delay: 200,
              ),
              // Service Item 2
              _buildServiceItem(
                imageUrl: 'img/services-2.jpg',
                icon: Icons.wifi, // Replace with appropriate icon
                title: 'Best Customer Support 24/7',
                description:
                'Our dedicated customer support team is available 24/7 to assist you with any questions or concerns.We’re here for you at any time, ensuring that your experience with Celtron Energies is smooth and worry-free.',
                delay: 300,
              ),
              // Service Item 3
              _buildServiceItem(
                imageUrl: 'img/services-3.jpg',
                icon: Icons.cases, // Replace with appropriate icon
                title: 'Lifetime Support for Solar Systems',
                description:
                'We offer lifetime support for all our solar systems. Whether it’s maintenance, upgrades, or troubleshooting, our team is always ready to help, ensuring your system runs efficiently for years to come. ',
                delay: 400,
              ),
            ],
          ),
        ],
      ),
    );
  }


}

class ClientsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildClientItem(String imageUrl) {
      return Container(
        width: MediaQuery.of(context).size.width*.15,
        height: MediaQuery.of(context).size.height*.13,// Adjust width for responsiveness
        padding: EdgeInsets.all(8.0), // Padding around the image
        child: Image.asset(
          imageUrl,
          fit: BoxFit.fitWidth,
        ),
      );
    }
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[200], // Light background color
      padding: EdgeInsets.symmetric(vertical: 40.0), // Section padding
      child: Column(
        children: [
          // Main Container
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Clients Grid
                Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  alignment: WrapAlignment.center,
                  children: [
                    _buildClientItem('img/client-1.png'),
                    _buildClientItem('img/client-2.png'),
                    _buildClientItem('img/client-3.png'),
                    _buildClientItem('img/client-4.png'),
                    _buildClientItem('img/client-5.png'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }

  // Widget to build each client item

}
