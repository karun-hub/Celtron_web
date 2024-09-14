import 'package:flutter/material.dart';

class PostGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white70,
          child: Column(
            children: [
              Image(image: AssetImage("img/logo.png"),height: 100),
              Center(child: Text("Blogs",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
              Container(
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // 3 cards in a row
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      // childAspectRatio: 0.65, // Adjust this value for height-to-width ratio
                    ),
                    itemCount: 6, // Number of cards to display
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 300,
                          child: PostCard());
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.orange[100],
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                // Add navigation to the post link here
                // Navigator.pushNamed(context, '/realistic-vs-stylized');
              },
              child: Stack(
                children: [
                  // Post Thumbnail
                  // Image.network(
                  //   'https://firebasestorage.googleapis.com/v0/b/celtronenergies-20b67.appspot.com/o/3d-rendering-isometric-house-model.jpg?alt=media&token=20510921-cd78-4c16-92a4-78a50467fb71',
                  //   width: double.infinity,
                  //   height: 150, // Adjust height for grid
                  //   fit: BoxFit.cover,
                  // ),
                  Image(
                    image: AssetImage('img/services-1.jpg'),
                    width: double.infinity,
                     fit: BoxFit.cover,),
                  // Post Badge
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      color: Colors.orange,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Text(
                        'Insight',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Post Title
                  InkWell(
                    onTap: () {
                      // Add navigation to the post link here
                      Navigator.pushNamed(context, '/realistic-vs-stylized');
                    },
                    child: Text(
                      'Realistic vs. stylized: The debate of 3D animation style',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  // Post Excerpt
                  Text(
                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit...',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 5),
                  // Post Date
                  Text(
                    DateTime.now().toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
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
}
