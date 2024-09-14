  import 'package:flutter/material.dart';

class ProductDescPage extends StatelessWidget {
  const ProductDescPage({super.key, required this.page});
  final String page;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/product_bg.jpeg",),
                      fit: BoxFit.cover
              )
            ),
            height: MediaQuery.of(context).size.height * .9,
            // color: Colors.black,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'ON GRID SOLAR SYSTEM',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'An On-Grid Solar System, also known as a grid-tied or grid-connected solar system, is a popular choice for residential and commercial properties. It directly connects to the utility power grid, allowing users to generate their own electricity while remaining connected to the grid for backup power.',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'How Does It Work?',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Material(
                                  color: Colors.transparent,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'Solar Panels capture sunlight and convert it into direct current (DC) electricity.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const Material(
                                  color: Colors.transparent,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'An Inverter transforms DC into alternating current (AC) electricity, which powers home appliances.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const Material(
                                  color: Colors.transparent,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'Grid Connection ensures that excess electricity is fed back to the grid, enabling net metering.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const Material(
                                  color: Colors.transparent,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'Net Metering credits users for the surplus power they supply, reducing overall electricity bills.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Benefits of On-Grid Solar Systems',
                              style: TextStyle(fontSize: 16),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Material(
                                  color: Colors.transparent,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'Cost Savings: Reduce electricity bills and earn credits through net metering.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const Material(
                                  color: Colors.transparent,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'Low Maintenance: No need for batteries, resulting in lower maintenance and installation costs.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const Material(
                                  color: Colors.transparent,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'Eco-Friendly: Reduce your carbon footprint by using clean, renewable solar energy.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const Material(
                                  color: Colors.transparent,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'Reliable Power Supply: Stay connected to the grid for continuous power availability.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(width: 16),
                      Expanded(
                        child: Image.asset(
                          'img/ongrid.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .9,
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'ON GRID SOLAR SYSTEM',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'An On-Grid Solar System, also known as a grid-tied or grid-connected solar system, is a popular choice for residential and commercial properties. It directly connects to the utility power grid, allowing users to generate their own electricity while remaining connected to the grid for backup power.',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'How Does It Work?',
                              style: TextStyle(
                                // fontStyle: FontStyle.italic,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Material(
                                  color: Colors.black,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'Solar Panels capture sunlight and convert it into direct current (DC) electricity.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const Material(
                                  color: Colors.black,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'An Inverter transforms DC into alternating current (AC) electricity, which powers home appliances.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const Material(
                                  color: Colors.black,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'Grid Connection ensures that excess electricity is fed back to the grid, enabling net metering.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const Material(
                                  color: Colors.black,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'Net Metering credits users for the surplus power they supply, reducing overall electricity bills.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Benefits of On-Grid Solar Systems',
                              style: TextStyle(fontSize: 16),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Material(
                                  color: Colors.black,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'Cost Savings: Reduce electricity bills and earn credits through net metering.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const Material(
                                  color: Colors.black,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'Low Maintenance: No need for batteries, resulting in lower maintenance and installation costs.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const Material(
                                  color: Colors.black,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'Eco-Friendly: Reduce your carbon footprint by using clean, renewable solar energy.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                const Material(
                                  color: Colors.black,
                                  child: ListTile(
                                    leading: Icon(Icons.check_circle,
                                        color: Colors.orange),
                                    title: Text(
                                      'Reliable Power Supply: Stay connected to the grid for continuous power availability.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(width: 16),
                      Expanded(
                        child: Image.asset(
                          'img/ongrid.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
