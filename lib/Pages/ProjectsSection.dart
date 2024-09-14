import 'package:flutter/material.dart';

class OnGridSolarSystemPage extends StatelessWidget {
  const OnGridSolarSystemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/ongrid.jpg'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("img/logo.png"),height: MediaQuery.of(context).size.height*.15,),
                        // This is equivalent to the background image section
                        // Container(
                        //   height: 300, // Adjust the height as needed
                        //   decoration: const BoxDecoration(
                        //     image: DecorationImage(
                        //       image: AssetImage('img/ongrid.jpg'),
                        //       fit: BoxFit.cover,
                        //     ),
                        //   ),
                        // ),
                        const SizedBox(height: 16), // Adding space between sections

                        // Section containing the title and text
                        Container(

                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              // Main heading
                              Text(
                                'ON GRID SOLAR SYSTEM',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 16),

                              // Sub-heading and content
                              Text(
                                'What is Solar On Grid?',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'The On grid solar system is connected with a utility grid and this system would work only if the grid is available. In case of a power cut, the system will not work and hence the On-grid system is also termed a Grid-tied system. A grid is required since the inverter needs to be provided a reference voltage and the inverter needs to sync with the grid in order to export energy back into the grid.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 16),

                              // Sub-heading and content
                              Text(
                                'How it works?',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'The On grid solar system is connected with a utility grid and this system would work only if the grid is available. In case of a power cut, the system will not work and hence the On-grid system is also termed a Grid-tied system. A grid is required since the inverter needs to be provided a reference voltage and the inverter needs to sync with the grid in order to export energy back into the grid.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 16),

                              // Video section
                              Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.play_circle_fill,
                                      color: Colors.orange,
                                      size: 50,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Watch Video',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange,
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
                  ),
            Container(
            width: MediaQuery.of(context).size.width*.4,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // This is equivalent to the background image section
                // Container(
                //   height: 300, // Adjust the height as needed
                //   decoration: const BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage('img/ongrid.jpg'),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                const SizedBox(height: 16), // Adding space between sections

                // Section containing the title and text
                Container(

                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      // Main heading
                      Text(
                        'OFF GRID SOLAR SYSTEM',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(height: 16),

                      // Sub-heading and content
                      Text(
                        'Why Of Grid?',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Off-grid solar systems are independent power solutions that operate without relying on the utility grid. Ideal for remote locations or areas prone to power outages, these systems generate and store solar energy in batteries, providing a reliable and sustainable power source. They consist of solar panels, an inverter, and a battery storage system. ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),

                      // Sub-heading and content
                      // Text(
                      //   'How it works?',
                      //   style: TextStyle(
                      //     fontSize: 22,
                      //     fontWeight: FontWeight.bold,
                      //       color: Colors.white
                      //   ),
                      // ),
                      // SizedBox(height: 8),
                      // Text(
                      //   'The On grid solar system is connected with a utility grid and this system would work only if the grid is available. In case of a power cut, the system will not work and hence the On-grid system is also termed a Grid-tied system. A grid is required since the inverter needs to be provided a reference voltage and the inverter needs to sync with the grid in order to export energy back into the grid.',
                      //   style: TextStyle(
                      //     fontSize: 16,color: Colors.white
                      //   ),
                      // ),
                      SizedBox(height: 16),

                      // Video section
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.play_circle_fill,
                              color: Colors.orange,
                              size: 50,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Watch Video',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrangeAccent,
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
      ),
                ],
              ),
            ),
            Container(
              color: Colors.white38,
                child: HybridSolarSystemSection())
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
//
// class projectSection extends StatefulWidget {
//   const projectSection({super.key});
//
//   @override
//   State<projectSection> createState() => _projectSectionState();
// }
//
// class _projectSectionState extends State<projectSection> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text("Hiii"),
//     );
//   }
// }

class HybridSolarSystemSection extends StatelessWidget {
  const HybridSolarSystemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main heading
          const Text(
            'HYBRID SOLAR SYSTEM',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          // Using Stack to create overlay effect
          Stack(
            children: [
              // Image Container
              Container(
                height: 900,
              width: MediaQuery.of(context).size.width,
              //   child: Container(
              //     width: double.infinity, // Full width for image
              //     height: 400, // Adjust height as needed
              //     decoration: const BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage('img/house.jpg'), // Replace with your image path
              //         fit: BoxFit.fitHeight,
              //       ),
              //     ),
              //   ),
              // ),
                child: Center(
                  child: SizedBox(
                      height: 500,width:1200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 400,),
                          Expanded(
                            child: Image(image: AssetImage('img/house.jpg'),fit: BoxFit.fill
                              ,),
                          ),
                        ],
                      )),
                ),
              ),
              // Orange Text Container
              Positioned(
                top: 50, // Adjust the vertical position as required
                left: 0, // Fixed start from the left edge
                child: Container(
                  height: 500,
                  width: 650, // Adjust width as needed
                  padding: const EdgeInsets.all(20),
                  color: Colors.orange,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Sub-heading
                      const Text(
                        'What is Hybrid Solar System?',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Description Text
                      const Text(
                        'Solar power systems come in three varieties: on-grid, off-grid, and hybrid. A hybrid solar system has the good features of both on-grid and off-grid solar systems, minus their flaws. '
                            'The hybrid solar system is connected to the grid via net metering and also has a battery backup to store the power. The energy that solar panels collect goes through a hybrid solar inverter to generate electricity. '
                            'The most important benefit of a hybrid solar system is the power backup facility. It means you can continue using electricity without disruptions even during power outages. A battery backup helps store the extra power generated by the solar system during peak hours.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Another Sub-heading
                      const Text(
                        'How it works?',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // More description
                      const Text(
                        'Hybrid solar systems produce usable electricity with the help of hybrid solar inverters and batteries. The power stored in the batteries can be used later on. '
                            'These Hybrid solar systems work in the same manner as traditional grid-tied solar systems. But since they can also store energy, most hybrid systems can function as a backup power source too. '
                            'They can provide continuous energy even when there is a power outage.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Watch Video Button
                      Row(
                        children: [
                          Icon(
                            Icons.play_circle_filled,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Watch Video',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


